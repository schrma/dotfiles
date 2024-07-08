#!/bin/bash

file="$HOME/.dotfiles/mail/notmuch-config.symlink"

target="$HOME/.$( basename "$file" '.symlink' )"
echo $target
if [ -e "$target" ]; then
  echo "~${target#$HOME} already exists... Skipping."
else
  echo "Creating symlink for $file"
  ln -s "$file" "$target"
fi



