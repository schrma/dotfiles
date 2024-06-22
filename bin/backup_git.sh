#!/bin/bash

date=`date +%y%m%d_%H%M`
path=/home/marco/backup/backup_git
file="$path/git_$date.txt"
if [ ! -d $path ]; then
  mkdir -p $path;
fi
echo "Create $file"
tar -czvf $file /home/marco/git-repo





