#!/bin/sh

# todo: greet and ask for confirmation

echo "Installing xcode-stuff"
xcode-select --install

echo 'Installing Antigen...'
git clone https://github.com/zsh-users/antigen.git ~/.antigen

# todo: setup dotfiles


# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
echo "Updating homebrew..."
brew update

echo 'Installing default homebrew software...'

# CLI tools
brew install cask
brew install cowsay # very important!
brew install diff-so-fancy
brew install fortune # the cow has to say something, right?
brew install git-extras
brew install midnight-commander
brew install node
brew install sl # toot toot
brew install syncthing
brew install syncthing-inotify
brew install the_silver_searcher
brew install tree
brew install watchman
brew install wget
brew install yarn

brew install homebrew/dupes/nano

# Quicklook plugins
brew cask install betterzipql
brew cask install qlcolorcode
brew cask install qlimagesize
brew cask install qlmarkdown
brew cask install qlstephen
brew cask install quicklook-csv
brew cask install quicklook-json

# GUI apps
brew cask install adapter
brew cask install adobe-creative-cloud
brew cask install appzapper
brew cask install atom
brew cask install clipgrab
brew cask install cyberduck
brew cask install dash
brew cask install dropzone
brew cask install firefox
brew cask install geektool
brew cask install gog-galaxy
brew cask install google-chrome
brew cask install hyperterm
brew cask install launchcontrol
brew cask install mucommander
brew cask install nwjs
brew cask install rowanj-gitx
brew cask install sequel-pro
brew cask install skype
brew cask install soundcloud-downloader
brew cask install spectacle
brew cask install sqlitebrowser
brew cask install steam
brew cask install the-unarchiver
brew cask install virtualbox
brew cask install vlc
brew cask install yujitach-menumeters

echo "Cleaning up brew"
brew cleanup

#echo 'Updating npm to the latest version'
#npm install -g npm@latest

echo 'Installing global ruby gems...'
sudo gem install lolcat

#echo 'Starting Oh My Zsh installer...'
# the installer will switch to zsh after completion
# no need to chsh manually
#curl -L http://install.ohmyz.sh | sh

echo 'Installing global node modules...'
npm -g install browserify
npm -g install electron
npm -g install eslint
npm -g install eslint-nibble
npm -g install eslint-plugin-react
npm -g install grunt-cli
npm -g install jshint
npm -g install npm
npm -g install phantomjs
npm -g install prettyjson
npm -g install react-native-cli
npm -g install react-tools
npm -g install ungit
npm -g install webpack

echo 'Installing Atom plugins'
apm install activate-power-mode
apm install aesthetic-ui
apm install atom-material-ui
apm install autoprefixer
apm install color-picker
apm install dash
apm install dracula-theme
apm install dracula-ui
apm install emmet
apm install gruvbox-plus-syntax
apm install highlight-bad-chars
apm install jshint
apm install language-dots
apm install language-javascript-jsx
apm install language-rspec
apm install linter
apm install linter-eslint
apm install linter-stylelint
apm install minimap
apm install princess-syntax
apm install rails-rspec
apm install swackets
apm install tree-view-bundler
apm install vivid

echo 'Setting Applications to start automatically...'

echo 'Syncthing'
# Start syncthing now and at login
brew services start syncthing

echo 'Syncthing-inotify'
# Start syncthing-inotify now and at login
brew services start syncthing-inotify
