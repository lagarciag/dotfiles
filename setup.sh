#!/bin/bash

ln -s $HOME/.dotfiles/tmux/tmux.conf $HOME/.tmux.conf
ln -s $HOME/.dotfiles/emacs/emacs.conf $HOME/.emacs
ln -s $HOME/.dotfiles/emacs/emacs.d $HOME/

cp  $HOME/.dotfiles/bash/env.sh /etc/profile.d/00-env.sh
