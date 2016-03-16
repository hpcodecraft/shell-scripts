#!/bin/sh

# todo: greet and ask for confirmation


#echo 'Starting Homebrew installer...'
#ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
#brew doctor # check if installation was successful

# todo: check return value of brew doctor before installing stuff

echo 'Installing default homebrew software'

# CLI tools
brew install wget
brew install mc
brew install cowsay # very important!
brew install fortune # the cow has to say something, right?
brew install node
brew install syncthing
brew install syncthing-inotify
brew install cask

# Quicklook plugins
brew cask install qlcolorcode
brew cask install qlstephen
brew cask install qlmarkdown
brew cask install quicklook-json
brew cask install quicklook-csv
brew cask install betterzipql
brew cask install qlimagesize

# GUI apps
brew cask install adapter
brew cask install cyberduck
brew cask install firefox
brew cask install mucommander
brew cask install sequel-pro
brew cask install skype


#echo 'Updating npm to the latest version'
#npm install -g npm@latest

echo 'Installing lolcat'
sudo gem install lolcat

#echo 'Starting Oh My Zsh installer...'
# the installer will switch to zsh after completion
# no need to chsh manually
#curl -L http://install.ohmyz.sh | sh

echo 'Installing global node modules...'
npm -g install bower
npm -g install browserify
npm -g install coffee-script
npm -g install grunt-cli
npm -g install nodewebkit
npm -g install react-native-cli
npm -g install react-tools
npm -g install weinre
npm -g install jshint

#echo 'Linking Sublime Text to /usr/local/bin/subl'
#ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl

echo 'Setting Applications to start automatically...'

echo 'Syncthing'
# Start syncthing at login
ln -sfv /usr/local/opt/syncthing/*.plist ~/Library/LaunchAgents

# Launch syncthing
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.syncthing.plist

echo 'Syncthing-inotify'
# Start syncthing-inotify at login
ln -sfv /usr/local/opt/syncthing-inotify/*.plist ~/Library/LaunchAgents

# Launch syncthing-inotify
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.syncthing-inotify.plist
