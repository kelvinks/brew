sudo cat <<EOT > /etc/resolv.conf
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
echo '>>> Google DNS Changed OK!'

sudo cat <<EOT > /etc/shells
/usr/local/bin/zsh
EOT
echo '>>> /usr/local/bin/zsh Added OK!'

sudo chsh -s `which zsh`
