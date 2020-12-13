#!/bin/zsh
## kelvink.ga (kji9623@gmail.com)
## 2020-12-12

read -p '>>> Oh-My-Zsh install [Y / n] ?' AN1
if [ "$AN1" == "Y" ]; then
    curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
    echo '>>> Oh-My-Zsh Installed OK!'
else
    echo '>>> Pass ..'
fi
echo


read -p '>>> Powerline Fonts install [Y / n] ?' AN2
if [ "$AN2" == "Y" ]; then
    git clone https://github.com/powerline/fonts.git
    ./fonts/install.sh
    echo '>>> Powerline Fonts Install OK!'
else
    echo '>>> Pass ..'
fi
echo


read -p '>>> Oh-My-Zsh Plugins install [Y / n] ?' AN3
if [ "$AN3" == "Y" ]; then
    cd $HOME
    git clone https://github.com/bhilburn/powerlevel9k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel9k
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    git clone https://github.com/djui/alias-tips.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/alias-tips
    echo '>>> Oh-My-Zsh Plugins OK!'
else
    echo '>>> Pass ..'
fi
echo


read -p '>>> Oh-My-Zsh Config recovery [Y / n] ?' AN4
if [ "$AN4" == "Y" ]; then
    cd $HOME
    mv .zshrc .zshrc_backup
    wget https://raw.githubusercontent.com/kelvinks/brew/master/.zshrc
    echo '>>> Oh-My-Zsh Config OK!'
else
    echo '>>> Pass ..'
fi
echo


read -p '>>> Default Shell change ZSH & Google DNS [Y / n] ?' AN5
if [ "$AN2" == "Y"]; then
    cd $HOME
    sudo curl -L https://raw.githubusercontent.com/kelvinks/brew/master/run_sudo.sh | sh
else
    echo '>>> Pass ..'
fi
echo
