#!/bin/bash

ln -sf $HOME/.dotfiles/tmux/tmux.conf $HOME/.tmux.conf
ln -sf $HOME/.dotfiles/emacs/emacs.conf $HOME/.emacs
ln -sf $HOME/.dotfiles/emacs/emacs.d $HOME/

chown $USER:$USER $HOME/.tmux.conf $HOME/.emacs $HOME/.emacs.d 

