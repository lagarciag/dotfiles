#!/bin/bash

set -e

sudo sed -i 's/X11UseLocalhost yes/X11UseLocalhost no/g' /etc/ssh/sshd_config
sudo service ssh restart
sudo apt-get install emacs-nox libxtst6

