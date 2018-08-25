#!/bin/bash
HUB_ARCH=''

checkArchidecture () {
    if (dpkg --print-architecture | grep -q 'armhf'); then
        HUB_ARCH='linux-arm'
    elif (dpkg --print-architecture | grep -q 'arm64'); then
        HUB_ARCH='linux-arm64'
    else
        echo 'not supported Archidecture'
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
        checkArchidecture
        echo "Try install Hub"
        installHub ${HUB_ARCH}
    fi
}

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
    BOARD=$(cat /etc/armbian-release | grep BOARD= | cut -c 7-)
    BRANCH=$(cat /etc/armbian-release | grep BRANCH= | cut -c 8-)
    git checkout -b $(date +%Y%m%d)-$BOARD-$BRANCH
    echo "yes=works no=don't work NT=not tested NA=not populated NW=not working"
    echo 'BOOT=yes' > ${BOARD}-${BRANCH}.report
    cat /etc/armbian-release | grep VERSION >> ${BOARD}-${BRANCH}.report
    echo "KERNEL="$(uname -r) >> ${BOARD}-${BRANCH}.report
    read -p 'NETWORK: ' netw && echo 'NETWORK='$netw >> ${BOARD}-${BRANCH}.report
    read -p 'WIRELESS: ' wlan && echo 'WIRELESS='$wlan >> ${BOARD}-${BRANCH}.report
    read -p 'HDMI: ' hdmi && echo 'HDMI='$hdmi >> ${BOARD}-${BRANCH}.report
    read -p 'USB: ' usb && echo 'USB='$usb >> ${BOARD}-${BRANCH}.report
    echo "ARMBIANMONITOR="$(sudo armbianmonitor -u | head -n -2 | cut -c 54-) >> ${BOARD}-${BRANCH}.report
    git add -A && git commit
    hub fork
    git push -u $(git remote -v | awk '{print $1}' | grep -vEw origin | tail -n -1) $(date +%Y%m%d)-$BOARD-$BRANCH
    hub pull-request
}

checkDependencies
createReport
