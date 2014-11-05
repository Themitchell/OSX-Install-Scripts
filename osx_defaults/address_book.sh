#!/usr/bin/env bash

###############################################################################
# Address Book                                                                #
###############################################################################

# Enable the debug menu in Address Book
# defaults write com.apple.addressbook ABShowDebugMenu -bool true

killall "Address Book" > /dev/null 2>&1
killall "Contacts" > /dev/null 2>&1
