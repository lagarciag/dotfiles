#!/bin/bash

set -e

sudo sed -i 's/#X11UseLocalhost yes/X11UseLocalhost no/g' /etc/ssh/sshd_config
sudo sed -i 's/#X11UseLocalhost no/X11UseLocalhost no/g' /etc/ssh/sshd_config
sudo sed -i 's/X11UseLocalhost yes/X11UseLocalhost no/g' /etc/ssh/sshd_config

sudo service ssh restart
sudo apt-get install emacs-nox libxtst6 libxi6 libnss3 libxrandr2 -y 

echo "alias clion=~/.config/clion-2020.3.2/bin/clion.sh" >> ~/.bashrc

FILE=~/.emacs
if test -f "$FILE"; then
    echo "$FILE exists."
else
    echo "alias e=emacs" >> ~/.bashrc
    echo "export EDITOR=emacs" >> ~/.bashrc
    ln -sf $HOME/.config/dotfiles/emacs/emacs.conf $HOME/.emacs
    ln -sf $HOME/.config/dotfiles/emacs/emacs.d $HOME/.emacs.d
fi

ln -sf $HOME/.config/dotfiles/tmux/tmux.conf $HOME/.tmux.conf

