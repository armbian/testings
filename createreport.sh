#!/bin/bash
HUB_ARCH=''
#some colors we might need them 
green='\e[92m'
red='\e[91m'
NC='\e[0m'
bold='\e[1m'

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
    VERSION=$(cat /etc/armbian-release | grep VERSION= | cut -c 9-)
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
    git add -A
    git diff --cached
    read -p 'Do you want to push this changes upstream and send a PR to armbian? [YES/NO]: ' happy
    case $happy in
        yes|Yes|YES|y|Y)
            read -p 'Commitmessage: ' MESSAGE
            git commit -m "${BOARD}-${BRANCH}: ${VERSION} ${MESSAGE}"
            hub fork
            git push -u $(git remote -v | awk '{print $1}' | grep -vEw origin | tail -n -1) $(date +%Y%m%d)-$BOARD-$BRANCH
            hub pull-request -m "${BOARD}-${BRANCH}: ${VERSION} ${MESSAGE}"
        ;;
        *)
            git reset --hard HEAD
            echo "Aborted"
            exit 0
        ;;
    esac
}

pullRequestUpgrade () {
    DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
    BOARD=$(cat /etc/armbian-release | grep BOARD= | cut -c 7-)
    BRANCH=$(cat /etc/armbian-release | grep BRANCH= | cut -c 8-)
    VERSION_BEFORE=$(cat /etc/armbian-release | grep VERSION= | cut -c 9-)
    echo "Update from: "$VERSION_BEFORE
    apt update && sudo apt upgrade
    VERSION_AFTER=$(cat /etc/armbian-release | grep VERSION= | cut -c 9-)
    git checkout -b $(date +%Y%m%d)-$BOARD-$BRANCH
    echo 'BOOT=no' > ${BOARD}-${BRANCH}.report
    echo "VERSION="$VERSION_AFTER >> ${BOARD}-${BRANCH}.report
    echo "KERNEL= - " >> ${BOARD}-${BRANCH}.report
    echo "NETWORK=no" >> ${BOARD}-${BRANCH}.report
    echo "WIRELESS=no" >> ${BOARD}-${BRANCH}.report
    echo "HDMI=no" >> ${BOARD}-${BRANCH}.report
    echo "USB=no" >> ${BOARD}-${BRANCH}.report
    echo "DVFS=no" >> ${BOARD}-${BRANCH}.report
    echo "ARMBIANMONITOR=no" >> ${BOARD}-${BRANCH}.report
    git add -A
    git commit -m "Upgrade from : ${VERSION_BEFORE} to ${VERSION_AFTER}"
    git push -u $(git remote -v | awk '{print $1}' | grep -vEw origin | tail -n -1) $(date +%Y%m%d)-$BOARD-$BRANCH
    hub pull-request -m "Upgrade from : ${VERSION_BEFORE} to ${VERSION_AFTER}"
    echo "bash ${DIR}/createreport.sh -R" >> /home/$(whoami)/.bashrc
    sudo reboot
}

afterRestart () {
    BOARD=$(cat /etc/armbian-release | grep BOARD= | cut -c 7-)
    BRANCH=$(cat /etc/armbian-release | grep BRANCH= | cut -c 8-)
    DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
    sed -i '/createreport.sh/d' /home/$(whoami)/.bashrc
    cd $DIR
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
    git add -A
    git diff --cached
    read -p 'Do you want to push this changes upstream and send a PR to armbian? [YES/NO]: ' happy
    case $happy in
        yes|Yes|YES|y|Y)
            git commit
            git push -u $(git remote -v | awk '{print $1}' | grep -vEw origin | tail -n -1) $(date +%Y%m%d)-$BOARD-$BRANCH          
        ;;
        *)
            git reset --hard HEAD
            echo "Aborted, you can restart the Report with ./createreport.sh -R"
            exit 0
        ;;
    esac
}

createTable () {
    git checkout master
    git pull origin master
    rm outdated.txt outdated.md table.txt table.md missing_boards.md missing_boards.txt
    
    #create list of not available reports
    wget 'https://beta.armbian.com/buildlogs/report.html'

    IFS=$'\r\n' GLOBIGNORE='*' command eval  'entry_html=($(cat report.html))'
    for i in "${entry_html[@]}"; do
        board_kernel_html+=($(echo $i | awk -F'</td><td>' '{print $2"-"$3}'))
    done
    for board in *.report; do
        board_kernel_report+=(${board::-7})
    done
    # by dublicate a board listed in one of the other arrays, uniq -u will sort it out
    blacklist=(Board-Branch)
    printf '%s\n' "${blacklist[@]} ${board_kernel_report[@]} ${board_kernel_html[@]}" | sort | uniq -u >> missing_boards.txt
    echo "# Currently missing board-kernel.report" > missing_boards.md
    echo "Help us by test one of the boards listed here:" >> missing_boards.md
    
    while read p; do
        echo "- $p" >> missing_boards.md
    done < missing_boards.txt
    rm report.html

    # create table of *.reports
    echo " " > table.md
    echo "# Current status of boards" >> table.md
    echo "|BOARD|BOOT|VERSION|KERNEL|ETH|WIFI|HDMI|USB|DVFS|ARMBIANMONITOR|" >> table.md
    echo "|-----|----|-------|------|---|----|----|---|----|--------------|" >> table.md
    echo "BOARD;BOOT;VERSION;KERNEL;ETH;WIFI;HDMI;USB;DVFS;ARMBIANMONITOR" > table.txt
    # create list of outdated reports
    echo " " > outdated.md
    echo "# Borads with outdated Reports:" >> outdated.md
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
    cutter2 () {
        res=$(echo $1 | awk -F'=' '{print $2}')
    }
    # assuming we have 9 entries in createReport (), in case this changes, the echo command has to be adjusted (also the table header!) to generate a proper table in README.md
    # $(cutter "BOARD=${board::-7}") is a small 'hack' so that awk in cutter () works properly
    # define subversion which should be actuall at the moment
    subversion=59
    for board in *.report; do
        IFS=$'\r\n' GLOBIGNORE='*' command eval  'entry=($(cat ${board}))'
        echo "|"$(cutter "BOARD=${board::-7}")"|"$(cutter "${entry[0]}")"|"$(cutter "${entry[1]}")"|"$(cutter "${entry[2]}")"|"$(cutter "${entry[3]}")"|"$(cutter "${entry[4]}")"|"$(cutter "${entry[5]}")"|"$(cutter "${entry[6]}")"|"$(cutter "${entry[7]}")"|"$(cutter "${entry[8]}")"|" >> table.md
        echo $(cutter2 "BOARD=${board::-7}")";"$(cutter2 "${entry[0]}")";"$(cutter2 "${entry[1]}")";"$(cutter2 "${entry[2]}")";"$(cutter2 "${entry[3]}")";"$(cutter2 "${entry[4]}")";"$(cutter2 "${entry[5]}")";"$(cutter2 "${entry[6]}")";"$(cutter2 "${entry[7]}")";"$(cutter2 "${entry[8]}") >> table.txt
        # create list of outdated Reports
        if [ $(echo $(cutter "${entry[1]}") | awk -F'.' '{print $2}') -lt $subversion ]; then
            echo "- "${board::-7}  >> outdated.md
            echo ${board::-7} >> outdated.txt
        fi
    done
}

case $1 in
    -h|--help)
        echo ""
        echo "createrport.sh will fork the repo, collect the data needed to create a proper"
        echo -e "report, asks you what you should test and send a PR to Armbian. A ${red}GitHub"
        echo -e "account is mandatory!${NC}"
        echo ""
        echo "-h|--help     Show helptext"
        echo "-t|--table    Creates a new table based on current masters branch and pushes it"
        echo -e "              to origin master(armbian/testings ${red}only for people with"
        echo -e "              commitrights${NC} to this repo can use this function)."
        echo "-u|--update   Update masters branch of your fork (this is not needed for a"
        echo "              proper working script, only for cosmetic housekeeping)"
        echo "-U|--upgrade  Creates a PR, followed by apt update & apt upgrade and reboot"
        echo "              you'll be prompted to the board check the next time you log"
        echo "              into the console. The PR will be marked as not booting until"
        echo "              you finish the tests!"
        echo "-d|--delete   Lists and deletes remote branches in your fork (with yes/no"
        echo "              prompt, only for cosmetic housekeeping)"
        echo "*             create PR with your tests"
        ;;
    -t|--table)
        echo "update table and README.md"
        createTable
        head -17 README.md > README1.md && mv README1.md README.md
        cat missing_boards.md >> README.md && cat outdated.md >> README.md && cat table.md >> README.md
        git add -A && git commit -m"Table updated: $(date +%Y%m%d)" && git push
        ;;
    -u|--update)
        echo "update master of your fork"
        git checkout master
        checkDependencies
        checkLocalconfig
        #we try to fork it again in case you execute this script on a board/computer which wasn't used for PRs yet
        hub fork
        git pull origin master
        git push $(git remote -v | awk '{print $1}' | grep -vEw origin | tail -n -1) master
        ;;
    -U|--upgrade)
        echo -e "Do you want to upgrade your board?"
        read -p '[Yes/No]: ' yn
        if [[ $yn =~ ^[Yy](es)?$ ]]
        then
            git checkout master && git pull
            checkDependencies
            checkLocalconfig
            #we try to fork it again in case you execute this script on a board/computer which wasn't used for PRs yet
            hub fork
            pullRequestUpgrade
        else
            exit 0
        fi        
        ;;
    -R)
        afterRestart
        ;;
    -d|--delete)
        echo "list and delete remotebranches of your fork"
        git checkout master
        checkDependencies
        checkLocalconfig
        #we try to fork it again in case you execute this script on a board/computer which wasn't used for PRs yet
        hub fork
        for remote in $(git ls-remote --heads  $(git remote -v | awk '{print $1}' | grep -vEw origin | tail -n -1) | awk -F'refs/heads/' '{print $2}'); do
            echo -e "Should: ${bold}${red}${remote}${NC} be deleted on remote?"
            read -p '[Yes/No]: ' yn
            if [[ $yn =~ ^[Yy](es)?$ ]]
            then
                git push --delete $(git remote -v | awk '{print $1}' | grep -vEw origin | tail -n -1) $remote
            fi
        done
        ;;
    *)
        checkDependencies
        createReport
        ;;
esac
