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

curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
echo '>>> Oh-My-Zsh Installed OK!'

git clone https://github.com/powerline/fonts.git
./fonts/install.sh
echo '>>> Powerline Fonts Install OK!'

cd $HOME
git clone https://github.com/bhilburn/powerlevel9k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel9k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/djui/alias-tips.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/alias-tips
echo '>>> Oh-My-Zsh Plugins OK!'

cd $HOME
mv .zshrc .zshrc_backup
wget https://raw.githubusercontent.com/kelvinks/brew/master/.zshrc
echo '>>> Oh-My-Zsh Config OK!'
