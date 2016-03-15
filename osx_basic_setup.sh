#!/bin/sh

# todo: greet and ask for confirmation


#echo 'Starting Homebrew installer...'
#ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
#brew doctor # check if installation was successful

# todo: check return value of brew doctor before installing stuff

echo 'Installing default homebrew software'
brew install wget
brew install mc
brew install cowsay # very important!
brew install fortune # the cow has to say something, right?
brew install node
#brew install caskroom/cask/brew-cask

brew cask install qlcolorcode
brew cask install qlstephen
brew cask install qlmarkdown
brew cask install quicklook-json
brew cask install quicklook-csv
brew cask install betterzipql
brew cask install qlimagesize


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
