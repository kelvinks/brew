#!/bin/sh
## kelvink.ga (kji9623@gmail.com)
## 2020-12-12

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo '>>> Homebrew Installed OK!'

brew tap homebrew/bundle
brew install curl
brew install wget
echo '>>> Homebrew Base Apps Installed OK!'

cd $HOME
wget Brewfile https://raw.githubusercontent.com/kelvinks/brew/master/Brewfile
brew bundle Brewfile
echo '>>> Brewfile Package Installed OK!'

cd $HOME
curl -L https://raw.githubusercontent.com/kelvinks/brew/master/run_in_zsh.sh | sh

cd $HOME
curl -L https://raw.githubusercontent.com/kelvinks/brew/master/run_sudo.sh | sh
