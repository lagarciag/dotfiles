#!/bin/bash

set -e

sudo sed -i 's/#X11UseLocalhost yes/X11UseLocalhost no/g' /etc/ssh/sshd_config
sudo sed -i 's/#X11UseLocalhost no/X11UseLocalhost no/g' /etc/ssh/sshd_config
sudo sed -i 's/X11UseLocalhost yes/X11UseLocalhost no/g' /etc/ssh/sshd_config

sudo service ssh restart
sudo apt-get install emacs-nox libxtst6 libxi6 libnss3 libxrandr2 -y 

echo "alias clion=~/.config/clion-2020.3.2/bin/clion.sh" >> ~/.bashrc

EMACS=~/.emacs
if test -f "$EMACS"; then
    echo "$EMACS exists."
else
    echo "alias e=emacs" >> ~/.bashrc
    echo "export EDITOR=emacs" >> ~/.bashrc
    ln -sf $HOME/.config/dotfiles/emacs/emacs.conf $HOME/.emacs
    ln -sf $HOME/.config/dotfiles/emacs/emacs.d $HOME/.emacs.d
fi

ln -sf $HOME/.config/dotfiles/tmux/tmux.conf $HOME/.tmux.conf

CLION_VERSION="2020.3.2"
CLION=~/.config/clion-${CLION_VERSION}/bin/clion.sh
CLION_URL=https://download.jetbrains.com/cpp/CLion-${CLION_VERSION}.gz?_ga=2.227410653.1384653249.1612985181-944089105.1610581540
if test -f "$CLION"; then
    echo "found Clion installation"
else
    echo "installing c lion"
    wget $CLION_URL
    tar -xvzf CLion-${CLION_VERSION}.tar.gz ~/.config/
    rm CLion-${CLION_VERSION}.tar.gz
fi
