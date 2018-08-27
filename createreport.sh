#!/bin/bash
HUB_ARCH=''

checkArchitecture () {
    if (dpkg --print-architecture | grep -q 'armhf'); then
        HUB_ARCH='linux-arm'
    elif (dpkg --print-architecture | grep -q 'arm64'); then
        HUB_ARCH='linux-arm64'
    else
        echo 'not supported Architecture'
        exit 1
    fi
}

installHub () {
    #based on https://gist.github.com/Taytay/4b463d3e7ebf9915107251b3abad7073
    HUB_VERSION=`curl -w "%{url_effective}\n" -I -L -s -S github.com/github/hub/releases/latest -o /dev/null | awk -F'releases/tag/v' '{ print $2 }'`
    curl "https://github.com/github/hub/releases/download/v$HUB_VERSION/hub-$1-$HUB_VERSION.tgz" -L | tar xvz
    sudo ./hub-$1-$HUB_VERSION/install
    rm -r ./hub-$1-$HUB_VERSION
}

checkDependencies () {
    echo 'check dependencies:'
    if bash -c 'hub --version' >/dev/null; then
        echo 'Hub is installed'
    else
        checkArchitecture
        echo "Try install Hub"
        installHub ${HUB_ARCH}
    fi
}

# git changes are only made locally
checkLocalconfig () {
    if [[ $(cat .git/config | grep -q '[hub]') ]]; then
        echo "https is set"
    else
        echo "[hub]" >> .git/config
        echo "  protocol = https" >> .git/config
    fi
    if [[ $(cat .git/config | grep user) ]]; then
        echo "local repo settings set"
    else
        echo "Please set local repo settings:"
        echo "[user]" >> .git/config
        read -p 'NAME: ' usname && echo 'name = '$usname >> .git/config
        read -p 'EMAIL: ' email && echo 'email = '$email >> .git/config
    fi
}

createReport () {
    checkLocalconfig
    git checkout master
    git pull origin master
    BOARD=$(cat /etc/armbian-release | grep BOARD= | cut -c 7-)
    BRANCH=$(cat /etc/armbian-release | grep BRANCH= | cut -c 8-)
    git checkout -b $(date +%Y%m%d)-$BOARD-$BRANCH
    echo "yes=works no=don't work NT=not tested NA=not populated"
    echo 'BOOT=yes' > ${BOARD}-${BRANCH}.report
    cat /etc/armbian-release | grep VERSION >> ${BOARD}-${BRANCH}.report
    echo "KERNEL="$(uname -r) >> ${BOARD}-${BRANCH}.report
    read -p 'NETWORK: ' netw && echo 'NETWORK='$netw >> ${BOARD}-${BRANCH}.report
    read -p 'WIRELESS: ' wlan && echo 'WIRELESS='$wlan >> ${BOARD}-${BRANCH}.report
    read -p 'HDMI: ' hdmi && echo 'HDMI='$hdmi >> ${BOARD}-${BRANCH}.report
    read -p 'USB: ' usb && echo 'USB='$usb >> ${BOARD}-${BRANCH}.report
    read -p 'DVFS: ' dvfs && echo 'DVFS='$dvfs >> ${BOARD}-${BRANCH}.report
    echo "ARMBIANMONITOR="$(sudo armbianmonitor -u | head -n -2 | cut -c 54-) >> ${BOARD}-${BRANCH}.report
    echo "==================================================="
    git --no-pager diff
    read -p 'Do you want to push this changes upstream and send a PR to armbian? [YES/NO]: ' happy
    case $happy in
        yes|Yes|YES|y|Y)
            git add -A && git commit
            hub fork
            git push -u $(git remote -v | awk '{print $1}' | grep -vEw origin | tail -n -1) $(date +%Y%m%d)-$BOARD-$BRANCH
            hub pull-request            
        ;;
        *)
            git reset --hard HEAD
            echo "Aborted"
            exit 1
        ;;
    esac
}

createTable () {
    git checkout master
    git pull origin master
    echo "|BOARD|BOOT|VERSION|KERNEL|ETH|WIFI|HDMI|USB|DVFS|ARMBIANMONITOR|" > table.md
    echo "|-----|----|-------|------|---|----|----|---|----|--------------|" >> table.md
    # GitHub has no possibility to colorize text in MarkDown, so we use some emoticons :P 
    cutter () {
        res=$(echo $1 | awk -F'=' '{print $2}')
        case $res in
            yes|Yes|YES)
                echo ":heavy_check_mark:"
            ;;
            no|No|NO)
                echo ":x:"
            ;;
            nt|Nt|NT)
                echo ":heavy_exclamation_mark:" $res
            ;;
            *)
                echo $res
            ;;
        esac
    }
    # assuming we have 9 entries in createReport (), in case this changes, the echo command has to be adjusted (also the table header!) to generate a proper table in README.md
    # $(cutter "BOARD=${board::-7}") is a small 'hack' so that awk in cutter () works properly
    for board in *.report; do
        IFS=$'\r\n' GLOBIGNORE='*' command eval  'entry=($(cat ${board}))'
        echo "|"$(cutter "BOARD=${board::-7}")"|"$(cutter "${entry[0]}")"|"$(cutter "${entry[1]}")"|"$(cutter "${entry[2]}")"|"$(cutter "${entry[3]}")"|"$(cutter "${entry[4]}")"|"$(cutter "${entry[5]}")"|"$(cutter "${entry[6]}")"|"$(cutter "${entry[7]}")"|"$(cutter "${entry[8]}")"|" >> table.md
    done
}

case $1 in
    -h|--help)
        echo "createrport.sh will fork the repo, collect the data needed to create a proper report, asks you what you should test and send a PR to Armbian. A GitHub account is mandatory!"
        echo "-h|--help     Show helptext"
        echo "-t|--table    Creates a new table based on current masters branch and pushes it to origin master (armbian/testings only for people with commitrights to this repo can use this function)."
        echo "*             create PR with your tests"
    ;;
    -t|--table)
        echo "update table and README.md"
        createTable
        head -17 README.md > README1.md && mv README1.md README.md
        cat table.md >> README.md && rm table.md
        git add -A && git commit -m"Table updated: $(date +%Y%m%d)" && git push
    ;;
    *)
        checkDependencies
        createReport
    ;;
esac


