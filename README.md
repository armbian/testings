
# How to create a test report?

1. Fork this repository
2. Make changes - add new or edit current report
3. Create a pull request or request for [commit rights](https://www.armbian.com/contact).

More info:
https://docs.armbian.com/Process_Contribute/

# What exactly I need to do?
1. Boot the board with fresh self-made image or nightly. You can also upgrade to nightly with [armbian-config](https://docs.armbian.com/User-Guide_Armbian-Config/)
2. Check board basic functions and create report as in example below. Yes/no, leave empty for in between, ...
3. Create a new test file report or edit existing

# What filename should I choose?

Filename is build from:

    boaradname-kernelbranch.report

Correct board name can be checked [here](https://github.com/armbian/build/tree/master/config/boards) (without .conf). Kernel branch can be read on your board this way:
`cat /etc/armbian-release | grep BRANCH`

# Where can I see end resoult?

We are building kernels once per day and this report is refreshed with it. You can check it here:

https://beta.armbian.com/buildlogs/report.html

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
