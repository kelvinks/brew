#!/bin/sh
## kelvink.ga (kji9623@gmail.com)
## 2020-08-21

cat <<EOT > /etc/resolv.conf
# Google DNS
nameserver 8.8.8.8
nameserver 8.8.4.4

# KT
;nameserver 168.126.63.1
;nameserver 168.126.63.2

# LG Uplus
;nameserver 180.182.54.1
;nameserver 210.94.0.73
EOT
echo 'Google DNS Changed OK!'

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/bundle
echo 'Homebrew Installed OK!'

echo 'Brewfile Package Installing..'
cd $HOME/Downloads/ && wget BrewFile https://raw.githubusercontent.com/kelvinks/brew/master/Brewfile
brew bundle Brewfile
echo 'Brewfile Package Installed OK!'

cat <<EOT >> /etc/shells
/usr/local/bin/zsh
EOT
echo '/usr/local/bin/zsh Added OK!'

chsh -s `which zsh`
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
git clone https://github.com/powerline/fonts.git && ./fonts/install.sh
git clone https://github.com/bhilburn/powerlevel9k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom/}/themes/powerlevel9k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/djui/alias-tips.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/alias-tips
echo 'zsh Installed OK!'

cd $HOME && mv .zshrc .zshrc_backup
wget https://raw.githubusercontent.com/kelvinks/brew/master/.zshrc
echo 'oh-my-zsh Installed OK!'
source ~/.zshrc
