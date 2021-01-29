#!/bin/bash

git clone https://github.com/holman/dotfiles.git ~/.dotfiles
cd ~/.dotfiles

ln -s $HOME/.dotfiles/tmux/tmux.conf $HOME/.tmux.conf
ln -s $HOME/.dotfiles/emacs/emacs.conf $HOME/.emacs
ln -s $HOME/.dotfiles/emacs/emacs.d $HOME/.emacs.d

