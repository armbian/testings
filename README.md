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

|BOARD|BOOT|VERSION|KERNEL|ETH|WIFI|HDMI|USB|DVFS|ARMBIANMONITOR|
|-----|----|-------|------|---|----|----|---|----|--------------|
|bananapi-default|:heavy_check_mark:|5.59|3.4.113-sun7i|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1kQe|
|bananapim2plus-dev|:heavy_check_mark:|5.59.180827|4.18.5-sunxi|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lpQ|
|bananapim2plus-next|:heavy_check_mark:|5.59.180827|4.14.67-sunxi|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lpO|
|bananapim2ultra-dev|:heavy_check_mark:|5.59|4.18.3-sunxi|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:x:|http://ix.io/1kVQ|
|bananapim64-next|:heavy_check_mark:|5.59|4.14.65-sunxi64|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:x:|http://ix.io/1kV6|
|bananapi-next|:heavy_check_mark:|5.59|4.14.65-sunxi|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1kQc|
|cubietruck-default|:heavy_check_mark:|5.59|3.4.113-sun7i|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1kQ2|
|cubietruck-dev|:heavy_check_mark:|5.59|4.18.5-sunxi|:heavy_check_mark:|:x:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lnN|
|cubietruck-next|:heavy_check_mark:|5.59|4.14.65-sunxi|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1kPU|
|cubox-i-next|:heavy_check_mark:|5.59|4.14.65-cubox|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1kVF|
|espressobin-default|:heavy_check_mark:|5.59|4.14.67-mvebu64|:heavy_check_mark:|na|na|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lia|
|espressobin-next|:heavy_check_mark:|5.59|4.18.5-mvebu64|:heavy_check_mark:|na|na|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lim|
|helios4-next|:heavy_check_mark:|5.59.180825|4.14.65-mvebu|:heavy_check_mark:|na|na|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lei|
|nanopct3plus-next|:heavy_check_mark:|5.59|4.14.65-s5p6818|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_exclamation_mark: nt|http://ix.io/1kMg|
|nanopct4-default|:heavy_check_mark:|5.59|4.4.152-rk3399|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lhu|
|nanopiair-next|:heavy_check_mark:|5.59|4.14.65-sunxi|na|:heavy_check_mark:|na|na|:heavy_check_mark:|http://ix.io/1kMZ|
|nanopik1plus-next|:heavy_check_mark:|5.59|4.14.65-sunxi64|:heavy_check_mark:|:x:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1kMS|
|nanopineocore2-next|:heavy_check_mark:|5.59|4.14.65-sunxi64|na|na|na|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1kPF|
|orangepilite-default|:heavy_check_mark:|5.59|3.4.113-sun8i|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1kQl|
|orangepione-next|:heavy_check_mark:|5.59|4.14.65-sunxi|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1kQj|
|orangepipcplus-dev|:heavy_check_mark:|5.59.180827|4.18.5-sunxi|:heavy_check_mark:|:heavy_check_mark:|:heavy_exclamation_mark: nt|:heavy_check_mark:|:x:|http://ix.io/1lmm|
|orangepipcplus-next|:heavy_check_mark:|5.59.180827|4.14.67-sunxi|:heavy_check_mark:|:heavy_check_mark:|:heavy_exclamation_mark: nt|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1iiN|
|orangepizero-dev|:heavy_check_mark:|5.59.180825|4.18.5-sunxi|:heavy_check_mark:|:heavy_check_mark:|NA|:heavy_check_mark:|:x:|http://ix.io/1li2|
|orangepizero-next|:heavy_check_mark:|5.59.180825|4.14.67-sunxi|:heavy_check_mark:|:heavy_check_mark:|NA|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lhS|
|orangepizeroplus2-h5-next|:heavy_check_mark:|5.59|4.14.65-sunxi64|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1kMz|
|orangepizeroplus-next|:heavy_check_mark:|5.59|4.14.65-sunxi64|:heavy_check_mark:|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1kMJ|
|pinebook-a64-default|:heavy_check_mark:|5.56|3.10.107-pine64|:heavy_check_mark:|:heavy_check_mark:|:heavy_exclamation_mark: NT|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lme|
|rock64-default|:heavy_check_mark:|5.59|4.4.152-rockchip64|:heavy_check_mark:|na|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lhr|
|teres-a64-dev|:heavy_check_mark:|5.59|4.18.5-sunxi64|na|:heavy_check_mark:|:heavy_exclamation_mark: nt|:heavy_check_mark:|:x:|http://ix.io/1lre|
|tinkerboard-dev|:heavy_check_mark:|5.59.180828|4.18.5-rockchip|:heavy_check_mark:|:x:|:heavy_exclamation_mark: nt|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1lrR|
|tinkerboard-next|:heavy_check_mark:|5.59|4.14.67-rockchip|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1llp|
|udoo-next|:heavy_check_mark:|5.59|4.4.150-udoo|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|http://ix.io/1kMo|
