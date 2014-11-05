#!/usr/bin/env bash

###############################################################################
# iCal                                                                        #
###############################################################################

# Enable the debug menu in iCal (pre-10.8)
# defaults write com.apple.iCal IncludeDebugMenu -bool true

killall "iCal" > /dev/null 2>&1
