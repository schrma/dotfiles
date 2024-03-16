#!/bin/bash


# https://github.com/ycm-core/YouCompleteMe?tab=readme-ov-file#linux-64-bit

sudo apt install -y build-essential cmake vim-nox python3-dev

sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_current.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
sudo apt install -y mono-complete golang nodejs openjdk-17-jdk openjdk-17-jre npm

cd ~/.vim/bundle/YouCompleteMe
python3 install.py --all



