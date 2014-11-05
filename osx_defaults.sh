#!/usr/bin/env bash

###############################################################################
# Setup OSX Defaults                                                          #
###############################################################################

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until this script has finished has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

sh ./osx_defaults/ui_ux.sh
sh ./osx_defaults/ssd_tweaks.sh
sh ./osx_defaults/input_devices.sh
sh ./osx_defaults/screen.sh
sh ./osx_defaults/finder.sh
sh ./osx_defaults/dock_dashboard.sh
sh ./osx_defaults/safari_webkit.sh
sh ./osx_defaults/mail.sh
sh ./osx_defaults/spotlight.sh
sh ./osx_defaults/terminal.sh
sh ./osx_defaults/time_machine.sh
sh ./osx_defaults/activity_monitor.sh
sh ./osx_defaults/address_book.sh
sh ./osx_defaults/ical.sh
sh ./osx_defaults/text_edit.sh
sh ./osx_defaults/disk_utility.sh
sh ./osx_defaults/messages.sh
sh ./osx_defaults/chrome.sh
sh ./osx_defaults/sublime.sh
sh ./osx_defaults/transmission.sh
sh ./osx_defaults/twitter.sh


###############################################################################
# Kill affected applications                                                  #
###############################################################################

for app in "Contacts" "cfprefsd" "SystemUIServer"; do
  killall "${app}" > /dev/null 2>&1
done
echo "Done. Note that some of these changes require a logout/restart to take effect."
