#!/bin/bash

DIRECTORY=~/.config/joplin1

wget -O - https://raw.githubusercontent.com/laurent22/joplin/master/Joplin_install_and_update.sh | bash

if [ -d "$DIRECTORY" ]; then
  echo "Joplin is already installed, just update"
else
  echo "Joplin will be installed and configured"
  joplin config sync.target 2
  joplin config sync.2.path /mnt/d/10-joplin
  joplin config editor vim
fi
