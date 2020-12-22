# Dotfiles

Welcome to my world. This is a collection of vim, tmux, and zsh configurations. Everything is based on https://github.com/nicknisi/dotfiles 

Thanks Nick Nisi for the great starting point. I just changed some points for my installation

## Contents

+ [Initial Setup and Installation](#initial-setup-and-installation)
+ [ZSH Setup](#zsh-setup)
+ [Tmux](#tmux-configuration)

## Initial Setup and Installation

### Backup

First, you may want to backup any existing files that exist so this doesn't overwrite your work.

Run `install/backup.sh` to backup all symlinked files to a `~/dotfiles-backup` directory.

This will not delete any of these files, and the install scripts will not overwrite any existing. After the backup is complete, you can delete the files from your home directory to continue installation.

### Installation

Then, clone the dotfiles repository to your home directory as `~/.dotfiles`. 

```bash
➜ git clone https://github.com/schrma/dotfiles.git ~/.dotfiles
➜ ~/.dotfiles/install.sh
```

`install.sh` will start by initializing the submodules used by this repository (if any). **Read through this file and comment out anything you don't want installed.** Then, it will install all symbolic links into your home directory. Every file with a `.symlink` extension will be symlinked to the home directory with a `.` in front of it. As an example, `vimrc.symlink` will be symlinked in the home directory as `~/.vimrc`. Then, this script will create a `~/.vim-tmp` directory in your home directory, as this is where vim is configured to place its temporary files. Additionally, all files in the `$DOTFILES/config` directory will be symlinked to the `~/.config/` directory for applications that follow the [XDG base directory specification](http://standards.freedesktop.org/basedir-spec/basedir-spec-latest.html), such as neovim.

## ZSH Setup

ZSH is configured in the `zshrc.symlink` file, which will be symlinked to the home directory. The following occurs in this file:

* Setup zplug plugin manager for zsh plugins and installed them.
* source a `~/.localrc` if it exists so that additional configurations can be made that won't be kept track of in this dotfiles repo. This is good for things like API keys, etc.
* Add the `~/bin` and `$DOTFILES/bin` directories to the path
* Use eval `dircolors ~/.dotfiles/resources/dircolors.ansi-dark` (Thanks to https://github.com/seebi/dircolors-solarized)
* And more...


## Vim and Neovim Setup
```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle
```

### Installation


## Fonts


## Tmux Configuration

