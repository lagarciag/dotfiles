#!/bin/bash

ln -sf $HOME/.dotfiles/tmux/tmux.conf $HOME/.tmux.conf
ln -sf $HOME/.dotfiles/emacs/emacs.conf $HOME/.emacs
ln -sf $HOME/.dotfiles/emacs/emacs.d $HOME/

chown $USER $HOME/.tmux.conf
chown $USER $HOME/.emacs
chown $USER $HOME/.emacs.d
chgrp $USER $HOME/.tmux.conf
chgrp $USER $HOME/.emacs
chgrp $USER $HOME/.emacs.d
