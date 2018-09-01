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
- bananapi-dev
- bananapim2ultra-dev
- bananapim3-dev
- bananapim64-next
- bananapipro-dev
- beelinkx2-default
- beelinkx2-dev
- beelinkx2-next
- Board-Branch bananapi-default
- clearfogbase-default
- clearfogbase-dev
- clearfogbase-next
- cubox-i-default
- cubox-i-dev
- firefly-rk3399-default
- firefly-rk3399-dev
- lepotato-next
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
- miqi-default
- miqi-dev
- miqi-next
- nanopct4-dev
- nanopiair-default
- nanopiair-dev
- nanopik2-s905-default
- nanopik2-s905-next
- nanopim1-default
- nanopim1plus-default
- nanopim1plus-dev
- nanopim1plus-next
- nanopim3-next
- nanopim4-default
- nanopim4-dev
- nanopineo4-default
- nanopineo4-dev
- nanopineocore2-dev
- nanopineoplus2-dev
- nanopineoplus2-next
- orangepi2-default
- orangepi2-dev
- orangepi2-next
- orangepilite-dev
- orangepilite-next
- orangepione-default
- orangepione-dev
- orangepioneplus-dev
- orangepipc2-dev
- orangepipc2-next
- orangepipc-default
- orangepipc-dev
- orangepipc-next
- orangepipcplus-default
- orangepiplus2e-default
- orangepiplus2e-dev
- orangepiplus2e-next
- orangepiplus-default
- orangepiplus-dev
- orangepiplus-next
- orangepi-r1-default
- orangepi-r1-dev
- orangepi-r1-next
- orangepiwin-default
- orangepiwin-dev
- orangepiwin-next
- orangepizeroplus2-h3-default
- orangepizeroplus2-h3-dev
- orangepizeroplus2-h3-next
- orangepizeroplus2-h5-dev
- pine64-default
- pine64-dev
- pine64-next
- pine64so-default
- pine64so-dev
- pine64so-next
- pineh64-dev
- renegade-default
- renegade-dev
- rock64-dev
- rockpro64-default
- rockpro64-dev
- tinkerboard-default
- udoo-dev
- udoo-next
- udoo-next Board-Branch
 
# Borads with outdated Reports:
- pinebook-a64-default
 
# Current status of boards
|BOARD|BOOT|VERSION|KERNEL|ETH|WIFI|HDMI|USB|DVFS|ARMBIANMONITOR|
|-----|----|-------|------|---|----|----|---|----|--------------|
|bananapi-default|:heavy_check_mark:|5.59|3.4.113-sun7i|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1kQe|
|bananapim2plus-default|:heavy_check_mark:|5.59|3.4.113-sun8i|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lvo|
|bananapim2plus-dev|:heavy_check_mark:|5.59.180827|4.18.5-sunxi|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lpQ|
|bananapim2plus-next|:heavy_check_mark:|5.59.180827|4.14.67-sunxi|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lpO|
|bananapim2ultra-dev|:heavy_check_mark:|5.59|4.18.3-sunxi|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:x:|http://ix.io/1kVQ|
|bananapim3-dev|:heavy_check_mark:|5.59|4.18.5-sunxi|:heavy_check_mark:|:x:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lze|
|bananapim64-next|:heavy_check_mark:|5.59|4.14.65-sunxi64|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:x:|http://ix.io/1kV6|
|bananapi-next|:heavy_check_mark:|5.59|4.14.65-sunxi|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1kQc|
|bananapipro-default|:heavy_check_mark:|5.59.180828|3.4.113-sun7i|:heavy_check_mark:|:x:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lwH|
|bananapipro-next|:heavy_check_mark:|5.59.180828|4.14.67-sunxi|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lwF|
|clearfogpro-default|:heavy_check_mark:|5.59.180831|4.4.152-mvebu|:heavy_check_mark:|na|na|:heavy_check_mark:|:x:|http://ix.io/1lKE|
|clearfogpro-dev|:heavy_check_mark:|5.59.180901|4.18.5-mvebu|:heavy_check_mark:|na|na|:heavy_check_mark:|:x:|http://ix.io/1lKM|
|clearfogpro-next|:heavy_check_mark:|5.59.180901|4.14.67-mvebu|:heavy_check_mark:|na|na|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lKJ|
|cubietruck-default|:heavy_check_mark:|5.59|3.4.113-sun7i|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1kQ2|
|cubietruck-dev|:heavy_check_mark:|5.59|4.18.5-sunxi|:heavy_check_mark:|:x:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lnN|
|cubietruck-next|:heavy_check_mark:|5.59|4.14.65-sunxi|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1kPU|
|cubox-i-next|:heavy_check_mark:|5.59|4.14.65-cubox|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1kVF|
|espressobin-default|:heavy_check_mark:|5.59|4.14.67-mvebu64|:heavy_check_mark:|na|na|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lia|
|espressobin-next|:heavy_check_mark:|5.59|4.18.5-mvebu64|:heavy_check_mark:|na|na|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lim|
|helios4-default|:heavy_check_mark:|5.59.180901|4.4.152-mvebu|:heavy_check_mark:|na|na|:heavy_check_mark:|:x:|http://ix.io/1lKP|
|helios4-next|:heavy_check_mark:|5.59.180825|4.14.65-mvebu|:heavy_check_mark:|na|na|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lei|
|lepotato-default|:heavy_check_mark:|5.59|4.14.67-meson64|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lJK|
|lime-default|:heavy_check_mark:|5.59|3.4.113-sun7i|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lK5|
|lime-dev|:heavy_check_mark:|5.59.180831|4.18.5-sunxi|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lK8|
|lime-next|:heavy_check_mark:|5.59.180831|4.14.67-sunxi|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lK7|
|nanopct3plus-next|:heavy_check_mark:|5.59|4.14.65-s5p6818|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_exclamation_mark: nt|http://ix.io/1kMg|
|nanopct4-default|:heavy_check_mark:|5.59|4.4.152-rk3399|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lhu|
|nanopiair-next|:heavy_check_mark:|5.59|4.14.65-sunxi|na|:heavy_check_mark:|na|na|:heavy_check_mark:|http://ix.io/1kMZ|
|nanopiduo-default|:x:|||||||||
|nanopiduo-dev|:heavy_check_mark:|5.59.180830|4.18.5-sunxi|:heavy_check_mark:|:x:|na|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lFg|
|nanopiduo-next|:heavy_check_mark:|5.59|4.14.67-sunxi|:heavy_check_mark:|:x:|na|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lF1|
|nanopifire3-next|:heavy_check_mark:|5.59|4.14.67-s5p6818|:heavy_check_mark:|na|:heavy_exclamation_mark: nt|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lE2|
|nanopik1plus-dev|:heavy_check_mark:|5.59.180829|4.18.5-sunxi64|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lzw|
|nanopik1plus-next|:heavy_check_mark:|5.59|4.14.65-sunxi64|:heavy_check_mark:|:x:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1kMS|
|nanopim1-dev|:heavy_check_mark:|5.59.180828|4.18.5-sunxi|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|:x:|http://ix.io/1lwt|
|nanopim1-next|:heavy_check_mark:|5.59.180828|4.14.67-sunxi|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lwp|
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
|orangepilite2-dev|:heavy_check_mark:|5.59|4.18.0-rc7-sunxi64|na|:x:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lJW|
|orangepilite-default|:heavy_check_mark:|5.59|3.4.113-sun8i|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1kQl|
|orangepione-next|:heavy_check_mark:|5.59|4.14.65-sunxi|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1kQj|
|orangepipcplus-dev|:heavy_check_mark:|5.59.180827|4.18.5-sunxi|:heavy_check_mark:|:heavy_check_mark:|:heavy_exclamation_mark: nt|:heavy_check_mark:|:x:|http://ix.io/1lmm|
|orangepipcplus-next|:heavy_check_mark:|5.59.180827|4.14.67-sunxi|:heavy_check_mark:|:heavy_check_mark:|:heavy_exclamation_mark: nt|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1iiN|
|orangepiprime-dev|:heavy_check_mark:|5.59|4.18.5-sunxi64|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:x:|http://ix.io/1lzm|
|orangepiprime-next|:heavy_check_mark:|5.59.180829|4.14.67-sunxi64|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lzp|
|orangepizero-default|:heavy_check_mark:|5.59.180830|3.4.113-sun8i|:heavy_check_mark:|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lFy|
|orangepizero-dev|:heavy_check_mark:|5.59.180825|4.18.5-sunxi|:heavy_check_mark:|:heavy_check_mark:|NA|:heavy_check_mark:|:x:|http://ix.io/1li2|
|orangepizero-next|:heavy_check_mark:|5.59.180825|4.14.67-sunxi|:heavy_check_mark:|:heavy_check_mark:|NA|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lhS|
|orangepizeroplus2-h5-next|:heavy_check_mark:|5.59|4.14.65-sunxi64|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1kMz|
|orangepizeroplus-dev|:heavy_check_mark:|5.59|4.18.5-sunxi64|:heavy_check_mark:|:heavy_check_mark:|na|:heavy_check_mark:|:x:|http://ix.io/1lzb|
|orangepizeroplus-next|:heavy_check_mark:|5.59|4.14.65-sunxi64|:heavy_check_mark:|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1kMJ|
|pinebook-a64-default|:heavy_check_mark:|5.56|3.10.107-pine64|:heavy_check_mark:|:heavy_check_mark:|:heavy_exclamation_mark: NT|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lme|
|pinebook-a64-dev|:heavy_check_mark:|5.59|4.18.5-sunxi64|na|:heavy_check_mark:|:heavy_exclamation_mark: nt|:heavy_check_mark:|:x:|http://ix.io/1luK|
|rock64-default|:heavy_check_mark:|5.59|4.4.152-rockchip64|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lhr|
|teres-a64-dev|:heavy_check_mark:|5.59|4.18.5-sunxi64|na|:heavy_check_mark:|:heavy_exclamation_mark: nt|:heavy_check_mark:|:x:|http://ix.io/1lre|
|tinkerboard-dev|:heavy_check_mark:|5.59.180828|4.18.5-rockchip|:heavy_check_mark:|:heavy_check_mark:|:heavy_exclamation_mark: nt|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lvw|
|tinkerboard-next|:heavy_check_mark:|5.59|4.14.67-rockchip|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1llp|
|udoo-next|:heavy_check_mark:|5.59|4.4.150-udoo|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1kMo|
