#!/bin/bash

$HOME/.dotfiles/common.sh 
cp  $HOME/.dotfiles/bash/env.sh /etc/profile.d/00-env.sh
chown -R $USER:$USER $HOME/.dotfiles

