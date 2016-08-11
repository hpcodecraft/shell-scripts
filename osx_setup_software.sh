#!/bin/sh

# todo: greet and ask for confirmation

echo 'Starting Homebrew installer...'
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor # check if installation was successful

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
brew install the_silver_searcher

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
brew cask install adobe-creative-cloud
# brew cask install appzapper
brew cask install atom
brew cask install cyberduck
# brew cask install dash
brew cask install firefox
brew cask install geektool
brew cask install gog-galaxy
brew cask install google-chrome
brew cask install hyperterm
brew cask install mucommander
brew cask install nwjs
brew cask install rowanj-gitx
brew cask install sequel-pro
brew cask install skype
brew cask install spectacle
brew cask install steam
brew cask install virtualbox
brew cask install vlc
brew cask install yujitach-menumeters

#echo 'Updating npm to the latest version'
#npm install -g npm@latest

echo 'Installing lolcat'
sudo gem install lolcat

#echo 'Starting Oh My Zsh installer...'
# the installer will switch to zsh after completion
# no need to chsh manually
#curl -L http://install.ohmyz.sh | sh

echo 'Installing global node modules...'
npm -g install browserify
npm -g install grunt-cli
npm -g install react-native-cli
npm -g install react-tools
npm -g install jshint

echo 'Installing Atom plugins'
apm install activate-power-mode
apm install color-picker
apm install dash
apm install highlight-bad-chars
apm install language-javascript-jsx
apm install language-rspec
apm install swackets


echo 'Setting Applications to start automatically...'

echo 'Syncthing'
# Start syncthing at login and now
brew services start syncthing

echo 'Syncthing-inotify'
# Start syncthing-inotify at login and now
brew services start syncthing-inotify