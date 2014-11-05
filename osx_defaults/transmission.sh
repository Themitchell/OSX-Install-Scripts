#!/usr/bin/env bash

###############################################################################
# Transmission.app                                                            #
###############################################################################

# Use `~/Downloads/Torrents/incomplete` to store incomplete downloads
mkdir ~/Downloads/Torrents
mkdir ~/Downloads/Torrents/incomplete
defaults write org.m0k.transmission UseIncompleteDownloadFolder -bool true
defaults write org.m0k.transmission IncompleteDownloadFolder -string "${HOME}/Downloads/Torrents/incomplete"

# Don’t prompt for confirmation before downloading
defaults write org.m0k.transmission DownloadAsk -bool false

# Trash original torrent files
# defaults write org.m0k.transmission DeleteOriginalTorrent -bool true

# Hide the donate message
defaults write org.m0k.transmission WarningDonate -bool false
# Hide the legal disclaimer
defaults write org.m0k.transmission WarningLegal -bool false

killall "Transmission" > /dev/null 2>&1
