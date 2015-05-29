###############################################################################
# Development Environment                                                     #
###############################################################################

# Clone Dot-Files
cd; curl -#L https://github.com/themitchell/dot-files/tarball/master | tar -xzv --strip-components 1 --exclude={README.md}

# Install homebrew & homebrew-cask
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install caskroom/cask/brew-cask

# Install binaries
brew install ack
brew install wget
brew install readline
brew install rbenv
brew install ruby-build
brew install pyenv
brew install mysql
brew install postgres
brew install redis
brew install mongodb
brew install memcached
brew install qt
brew install phantomjs
brew install git

# Install custom tap for OiNutter's nodenv and node-build
brew tap themitchell/nodenv
brew install themitchell/nodenv/nodenv
brew install themitchell/nodenv/node-build

brew cask install asepsis
brew cask install monolingual
brew cask install a-better-finder-attributes
brew cask install alfred
brew cask alfred link
brew cask install dropbox
brew cask install onepassword
brew cask install backblaze
brew cask install carbon-copy-cloner
brew cask install cleanmymac
brew cask install cycling74-max
brew cask install firefox
brew cask install flash-player
brew cask install google-chrome
# Remove chrome to play nice with 1password
rm -r /Applications/Google\ chrome.app
mv /opt/homebrew-cask/Caskroom/google-chrome/latest/Google\ chrome.app /Applications
brew cask install google-hangouts
brew cask install handbrake
brew cask install handbrake-batch
brew cask install iphoto-library-manager
brew cask install java
brew cask install little-snitch
brew cask install logitech-unifying
brew cask install quicklook-csv
brew cask install quicklook-json
brew cask install quicklook-pfm
brew cask install sequel-pro
brew cask install silverlight
brew cask install soundflower
brew cask install spotify
brew cask install supercollider
brew cask install tower
brew cask install transmission
brew cask install vagrant
brew cask install valentina-studio
brew cask install vmware-fusion
brew cask install xquartz
brew cask install mou
