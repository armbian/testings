
# How to create a test report?

1. Fork this repository
2. Make Changes
3. Create a pull request

More info:
https://docs.armbian.com/Process_Contribute/

# What filename should I choose?

Filename is build from:

    boaradname-kernelbranch.report

Correct board name can be checked [here](https://github.com/armbian/build/tree/master/config/boards) (without .conf). Kernel branch can be read on your board this way:
`cat /etc/armbian-release | grep BRANCH`

# Report filename example: 

    bananapipro-next.report

# Which fields are supported?

Config content example:

    NETWORK=yes
    WIRELESS=yes
    HDMI=yes
    USB=yes
    ARMBIANMONITOR="http://ix.io/1kLp"

# Which fields are mandatory?

ARMBIANMONITOR

# Can I help more?

If you want to help reguraly, feel free to ask for [commit rights](https://www.armbian.com/contact).
