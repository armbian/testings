
# How to create a test report?

1. Fork this repository
2. Make Changes - add new or edit current report
3. Create a pull request or request for [commit rights](https://www.armbian.com/contact).

More info:
https://docs.armbian.com/Process_Contribute/

# What exactly I need to do?
1. Boot your board with freshly made image or nightly test build. You can upgrade any stable build to nightly with [armbian-config](https://docs.armbian.com/User-Guide_Armbian-Config/)
2. Check their basic functions and report if they work with: yes/no, leave empty for in between.
3. Create a new test file report

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
