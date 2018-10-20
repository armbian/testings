# What do I need?

1. Official Armbian nightly image (any stable can be switched to nightly from armbian-config)
2. GitHub account credentials

# How to create a test report?

    git clone https://github.com/armbian/testings
    cd testings
    ./createreport.sh

# How they are used?

We are building kernels once per day and these reports are included in this cycle.

Check [here](https://beta.armbian.com/buildlogs/report.html) for current status.

# Currently missing board-kernel.report
Help us by test one of the boards listed here:
- bananapi-default
- bananapim2ultra-dev
- bananapim3-dev
- bananapim64-next
- Board-Branch bananapi-default
- clearfogbase-default
- clearfogbase-dev
- clearfogbase-next
- lime2-default
- lime2-dev
- lime2-next
- lime-a33-dev
- lime-a33-next
- lime-a64-default
- lime-a64-dev
- lime-a64-next
- micro-default
- micro-dev
- micro-next
- nanopct3-next
- nanopct4-dev
- nanopim1-default
- nanopim1plus-default
- nanopim1plus-dev
- nanopim1plus-next
- nanopim4-dev
- nanopineo4-default
- nanopineo4-dev
- nanopineocore2-dev
- nanopineoplus2-dev
- nanopineoplus2-next
- olinuxino-a64-default
- olinuxino-a64-dev
- olinuxino-a64-next
- orangepi2-default
- orangepi2-dev
- orangepi2-next
- orangepipc-default
- orangepipcplus-default
- orangepiplus-default
- orangepiplus-dev
- orangepiplus-next
- pine64-default
- pine64-dev
- pine64-next
- pine64so-default
- pine64so-dev
- pine64so-next
- pineh64-dev
- renegade-dev
- rock64-dev
- rockpro64-default
- rockpro64-dev
- z28pro-default Board-Branch
 
# Borads with outdated Reports:
- pinebook-a64-default
 
# Current status of boards
|BOARD|BOOT|VERSION|KERNEL|ETH|WIFI|HDMI|USB|DVFS|ARMBIANMONITOR|
|-----|----|-------|------|---|----|----|---|----|--------------|
|bananapi-default|:heavy_check_mark:|5.59|3.4.113-sun7i|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1kQe|
|bananapi-dev|:heavy_check_mark:|5.59|4.18.5-sunxi|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lPg|
|bananapim2plus-default|:heavy_check_mark:|5.59|3.4.113-sun8i|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lvo|
|bananapim2plus-dev|:heavy_check_mark:|5.59.180827|4.18.5-sunxi|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lpQ|
|bananapim2plus-next|:heavy_check_mark:|5.59.180827|4.14.67-sunxi|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lpO|
|bananapim2ultra-dev|:heavy_check_mark:|5.59|4.18.3-sunxi|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:x:|http://ix.io/1kVQ|
|bananapim3-dev|:heavy_check_mark:|5.59|4.18.5-sunxi|:heavy_check_mark:|:x:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lze|
|bananapim64-next|:heavy_check_mark:|5.59|4.14.65-sunxi64|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:x:|http://ix.io/1kV6|
|bananapi-next|:heavy_check_mark:|5.59|4.14.65-sunxi|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1kQc|
|bananapipro-default|:heavy_check_mark:|5.59.180828|3.4.113-sun7i|:heavy_check_mark:|:x:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lwH|
|bananapipro-dev|:heavy_check_mark:|5.59|4.18.5-sunxi|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:||
|bananapipro-next|:heavy_check_mark:|5.59.180828|4.14.67-sunxi|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lwF|
|beelinkx2-default|:heavy_check_mark:|5.59|3.4.113-sun8i|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lPL|
|beelinkx2-dev|:heavy_check_mark:|5.59.180901|4.18.5-sunxi|:heavy_check_mark:|:x:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lPv|
|beelinkx2-next|:heavy_check_mark:|5.59|4.14.67-sunxi|:heavy_check_mark:|:x:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lPi|
|clearfogpro-default|:heavy_check_mark:|5.59.180831|4.4.152-mvebu|:heavy_check_mark:|na|na|:heavy_check_mark:|:x:|http://ix.io/1lKE|
|clearfogpro-dev|:heavy_check_mark:|5.59.180901|4.18.5-mvebu|:heavy_check_mark:|na|na|:heavy_check_mark:|:x:|http://ix.io/1lKM|
|clearfogpro-next|:heavy_check_mark:|5.59.180901|4.14.67-mvebu|:heavy_check_mark:|na|na|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lKJ|
|cubietruck-default|:heavy_check_mark:|5.59|3.4.113-sun7i|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1kQ2|
|cubietruck-dev|:heavy_check_mark:|5.59|4.18.5-sunxi|:heavy_check_mark:|:x:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lnN|
|cubietruck-next|:heavy_check_mark:|5.59|4.14.65-sunxi|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1kPU|
|cubox-i-default|:heavy_check_mark:|5.59|3.14.79-cubox|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lRA|
|cubox-i-dev|:heavy_check_mark:|5.59|4.18.5-cubox|:heavy_check_mark:|:heavy_exclamation_mark: nt|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lVN|
|cubox-i-next|:heavy_check_mark:|5.59|4.14.65-cubox|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1kVF|
|espressobin-default|:heavy_check_mark:|5.59|4.14.67-mvebu64|:heavy_check_mark:|na|na|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lia|
|espressobin-next|:heavy_check_mark:|5.59|4.18.5-mvebu64|:heavy_check_mark:|na|na|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lim|
|firefly-rk3399-default|:heavy_check_mark:|5.59.180918|4.4.156-rk3399|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1mWi|
|firefly-rk3399-dev|:heavy_check_mark:|5.59.180918|4.19.0-rc1-rk3399|:heavy_check_mark:|:x:|:heavy_exclamation_mark: NT|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1mWs|
|helios4-default|:heavy_check_mark:|5.59.180901|4.4.152-mvebu|:heavy_check_mark:|na|na|:heavy_check_mark:|:x:|http://ix.io/1lKP|
|helios4-next|:heavy_check_mark:|5.59.180825|4.14.65-mvebu|:heavy_check_mark:|na|na|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lei|
|lepotato-default|:heavy_check_mark:|5.59|4.14.67-meson64|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lOF|
|lepotato-next|:heavy_check_mark:|5.59|4.18.5-meson64|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lOG|
|lime-default|:heavy_check_mark:|5.59|3.4.113-sun7i|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lK5|
|lime-dev|:heavy_check_mark:|5.59.180831|4.18.5-sunxi|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lK8|
|lime-next|:heavy_check_mark:|5.59.180831|4.14.67-sunxi|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lK7|
|miqi-default|:heavy_check_mark:|5.59|4.4.153-rockchip|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lP0|
|miqi-dev|:heavy_check_mark:|5.59.180901|4.18.5-rockchip|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:||
|miqi-next|:heavy_check_mark:|5.59|4.14.67-rockchip|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lOX|
|nanopct3plus-next|:heavy_check_mark:|5.59|4.14.65-s5p6818|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_exclamation_mark: nt|http://ix.io/1kMg|
|nanopct4-default|:heavy_check_mark:|5.59|4.4.152-rk3399|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lhu|
|nanopiair-default|:heavy_check_mark:|5.59|3.4.113-sun8i|na|:heavy_check_mark:|na|:heavy_exclamation_mark: nt|:heavy_check_mark:|http://ix.io/1lVc|
|nanopiair-dev|:heavy_check_mark:|5.59.180902|4.18.5-sunxi|na|:heavy_check_mark:|na|:heavy_exclamation_mark: nt|:heavy_check_mark:|http://ix.io/1lVf|
|nanopiair-next|:heavy_check_mark:|5.59|4.14.65-sunxi|na|:heavy_check_mark:|na|na|:heavy_check_mark:|http://ix.io/1kMZ|
|nanopiduo-default|:x:|||||||||
|nanopiduo-dev|:heavy_check_mark:|5.59.180830|4.18.5-sunxi|:heavy_check_mark:|:x:|na|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lFg|
|nanopiduo-next|:heavy_check_mark:|5.59|4.14.67-sunxi|:heavy_check_mark:|:x:|na|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lF1|
|nanopifire3-next|:heavy_check_mark:|5.59|4.14.67-s5p6818|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lE2|
|nanopik1plus-dev|:heavy_check_mark:|5.59.180829|4.18.5-sunxi64|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lzw|
|nanopik1plus-next|:heavy_check_mark:|5.59|4.14.65-sunxi64|:heavy_check_mark:|:x:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1kMS|
|nanopik2-s905-default|:heavy_check_mark:|5.59|4.14.67-meson64|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lOz|
|nanopik2-s905-next|:heavy_check_mark:|5.59.180901|4.18.5-meson64|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lOD|
|nanopim1-dev|:heavy_check_mark:|5.59.180828|4.18.5-sunxi|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|:x:|http://ix.io/1lwt|
|nanopim1-next|:heavy_check_mark:|5.59.180828|4.14.67-sunxi|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lwp|
|nanopim4-default|:heavy_check_mark:|5.59|4.4.155-rk3399|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1my7|
|nanopineo2-dev|:heavy_check_mark:|5.59|4.18.5-sunxi64|:heavy_check_mark:|na|na|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lDJ|
|nanopineo2-next|:heavy_check_mark:|5.59.180830|4.14.67-sunxi64|:heavy_check_mark:|na|na|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lDF|
|nanopineocore2-next|:heavy_check_mark:|5.59|4.14.65-sunxi64|na|na|na|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1kPF|
|nanopineo-default|:heavy_check_mark:|5.59.180831|3.4.113-sun8i|:heavy_check_mark:|na|na|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lJg|
|nanopineo-dev|:heavy_check_mark:|5.59.180831|4.18.5-sunxi|:heavy_check_mark:|na|na|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lJH|
|nanopineo-next|:heavy_check_mark:|5.59|4.14.67-sunxi|:heavy_check_mark:|na|na|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lHY|
|odroidc1-next|:heavy_check_mark:|5.59|4.18.5-odroidc1|:heavy_check_mark:|na|:x:|:heavy_check_mark:|:x:|http://ix.io/1lBD|
|odroidc2-default|:heavy_check_mark:|5.59.180830|3.16.57-odroidc2|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lDS|
|odroidc2-next|:heavy_check_mark:|5.59|4.18.5-odroidc2|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lDQ|
|odroidxu4-default|:heavy_check_mark:|5.59.180829|3.10.106-odroidxu4|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lzK|
|odroidxu4-dev|:heavy_check_mark:|5.59.180829|4.18.0-rc4-odroidxu4|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lzR|
|odroidxu4-next|:heavy_check_mark:|5.59.180829|4.14.66-odroidxu4|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lzO|
|orangepilite2-dev|:heavy_check_mark:|5.59|4.18.0-rc7-sunxi64|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1me9|
|orangepilite-default|:heavy_check_mark:|5.59|3.4.113-sun8i|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1kQl|
|orangepilite-dev|:heavy_check_mark:|5.59.180902|4.18.5-sunxi|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lVa|
|orangepilite-next|:heavy_check_mark:|5.59|4.14.67-sunxi|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lV3|
|orangepione-default|:heavy_check_mark:|5.59|3.4.113-sun8i|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lVj|
|orangepione-dev|:heavy_check_mark:|5.59.180902|4.18.5-sunxi|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lVt|
|orangepione-next|:heavy_check_mark:|5.59|4.14.65-sunxi|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1kQj|
|orangepioneplus-dev|:heavy_check_mark:|5.59|4.18.0-rc7-sunxi64|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1m57|
|orangepipc2-dev|:heavy_check_mark:|5.59.180901|4.18.5-sunxi64|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|:x:|http://ix.io/1lRm|
|orangepipc2-next|:heavy_check_mark:|5.59|4.14.67-sunxi64|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lRg|
|orangepipc-dev|:heavy_check_mark:|5.59.180919|4.18.8-sunxi|:heavy_check_mark:|NA|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|https://pastebin.com/BXpx5qXh|
|orangepipc-next|:heavy_check_mark:|5.59.180919|4.14.70-sunxi|:heavy_check_mark:|NA|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|https://pastebin.com/3NLDHaFs|
|orangepipcplus-dev|:heavy_check_mark:|5.59.180827|4.18.5-sunxi|:heavy_check_mark:|:heavy_check_mark:|:heavy_exclamation_mark: nt|:heavy_check_mark:|:x:|http://ix.io/1lmm|
|orangepipcplus-next|:heavy_check_mark:|5.59.180827|4.14.67-sunxi|:heavy_check_mark:|:heavy_check_mark:|:heavy_exclamation_mark: nt|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1iiN|
|orangepiplus2e-default|:heavy_check_mark:|5.59.180901|3.4.113-sun8i|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lR6|
|orangepiplus2e-dev|:heavy_check_mark:|5.59.180901|4.18.5-sunxi|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lR4|
|orangepiplus2e-next|:heavy_check_mark:|5.59|4.14.67-sunxi|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lQY|
|orangepiprime-dev|:heavy_check_mark:|5.59|4.18.5-sunxi64|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:x:|http://ix.io/1lzm|
|orangepiprime-next|:heavy_check_mark:|5.59.180829|4.14.67-sunxi64|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lzp|
|orangepi-r1-default|:heavy_check_mark:|5.59|3.4.113-sun8i|:heavy_check_mark:|:heavy_check_mark:|na|:heavy_exclamation_mark: nt|:heavy_check_mark:|http://ix.io/1lO8|
|orangepi-r1-dev|:heavy_check_mark:|5.59.180901|4.18.5-sunxi|:heavy_check_mark:|:heavy_check_mark:|na|:heavy_exclamation_mark: nt|:x:|http://ix.io/1lOo|
|orangepi-r1-next|:heavy_check_mark:|5.59.180901|4.14.67-sunxi|:heavy_check_mark:|:heavy_check_mark:|na|:heavy_exclamation_mark: nt|:heavy_check_mark:|http://ix.io/1lOs|
|orangepiwin-default|:heavy_check_mark:|5.59|3.10.107-pine64|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lUA|
|orangepiwin-dev|:heavy_check_mark:|5.59.180902|4.18.5-sunxi64|:x:|:heavy_check_mark:|:x:|:heavy_check_mark:|:x:|http://ix.io/1lUE|
|orangepiwin-next|:heavy_check_mark:|5.59.180902|4.14.67-sunxi64|:x:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:x:|http://ix.io/1lUC|
|orangepizero-default|:heavy_check_mark:|5.59.180830|3.4.113-sun8i|:heavy_check_mark:|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lFy|
|orangepizero-dev|:heavy_check_mark:|5.60.180923|4.18.9-sunxi|:heavy_check_mark:|:heavy_exclamation_mark: nt|na|:heavy_check_mark:|:x:|http://ix.io/1nxX|
|orangepizero-next|:heavy_check_mark:|5.60.180923|4.14.71-sunxi|:heavy_check_mark:|:heavy_exclamation_mark: nt|na|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1nxS|
|orangepizeroplus2-h3-default|:heavy_check_mark:|5.59|3.4.113-sun8i|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_exclamation_mark: nt|:heavy_check_mark:|http://ix.io/1lRu|
|orangepizeroplus2-h3-dev|:heavy_check_mark:|5.59.180901|4.18.5-sunxi|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_exclamation_mark: nt|:heavy_check_mark:|http://ix.io/1lRr|
|orangepizeroplus2-h3-next|:heavy_check_mark:|5.59|4.14.67-sunxi|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_exclamation_mark: nt|:heavy_check_mark:|http://ix.io/1lRh|
|orangepizeroplus2-h5-dev|:heavy_check_mark:|5.59.180901|4.18.5-sunxi64|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_exclamation_mark: nt|:heavy_check_mark:|http://ix.io/1lRG|
|orangepizeroplus2-h5-next|:heavy_check_mark:|5.59|4.14.65-sunxi64|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1kMz|
|orangepizeroplus-dev|:heavy_check_mark:|5.59.180906|4.18.6-sunxi64|:heavy_check_mark:|:heavy_check_mark:|NA|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1mer|
|orangepizeroplus-next|:heavy_check_mark:|5.59|4.14.65-sunxi64|:heavy_check_mark:|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1kMJ|
|pinebook-a64-default|:heavy_check_mark:|5.56|3.10.107-pine64|:heavy_check_mark:|:heavy_check_mark:|:heavy_exclamation_mark: NT|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lme|
|pinebook-a64-dev|:heavy_check_mark:|5.59|4.18.5-sunxi64|na|:heavy_check_mark:|:heavy_exclamation_mark: nt|:heavy_check_mark:|:x:|http://ix.io/1luK|
|renegade-default|:heavy_check_mark:|5.59|4.4.153-rockchip64|:heavy_check_mark:|NA|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1m93|
|rock64-default|:heavy_check_mark:|5.59|4.4.152-rockchip64|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lhr|
|teres-a64-dev|:heavy_check_mark:|5.59|4.18.5-sunxi64|na|:heavy_check_mark:|:heavy_exclamation_mark: nt|:heavy_check_mark:|:x:|http://ix.io/1lre|
|tinkerboard-default|:heavy_check_mark:|5.60|4.4.156-rockchip|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1pzz|
|tinkerboard-dev|:heavy_check_mark:|5.59.180828|4.18.5-rockchip|:heavy_check_mark:|:heavy_check_mark:|:heavy_exclamation_mark: nt|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lvw|
|tinkerboard-next|:heavy_check_mark:|5.59|4.14.67-rockchip|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1llp|
|udoo-dev|:heavy_check_mark:|5.59|4.18.6-udoo|:heavy_check_mark:|:x:|:x:|:x:|:heavy_check_mark:|http://ix.io/1m18|
|udoo-next|:heavy_check_mark:|5.59|4.4.150-udoo|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1kMo|
|z28pro-default|:heavy_check_mark:|5.59|4.4.153-rockchip64|:heavy_check_mark:|:x:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lQR|
