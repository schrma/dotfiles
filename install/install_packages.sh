#!/usr/bin/env bash

filename=~/.dotfiles/install/apt_packages.txt
sudo apt-get -y install $(grep -vE "^\s*#" $filename  | tr "\n" " ")

# echo "Install Plugin for zsh"
# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

