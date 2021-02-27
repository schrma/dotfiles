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
Start vim and type `:PluginInstall`

### Neovim
```bash
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim
```

### YouCompleteMe
https://github.com/ycm-core/YouCompleteMe#linux-64-bit


```bash
sudo apt install build-essential cmake vim-nox python3-dev
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --all

```


## Fonts

In Windows

```bash
mkdir c:/fonts
cd c:/fonts
git clone https://github.com/powerline/fonts.git
cd fonts
Set-ExecutionPolicy RemoteSigned
.\install.ps1
Set-ExecutionPolicy RemoteSigned
```

## Windows Terminal
Set "defaultProfile" to Ubuntu Terminal

```
   // Add custom color schemes to this array.
    // To learn more about color schemes, visit https://aka.ms/terminal-color-schemes
    "schemes": [
        {
            "background" : "#002B36",
            "black" : "#002B36",
            "blue" : "#268BD2",
            "brightBlack" : "#657B83",
            "brightBlue" : "#839496",
            "brightCyan" : "#D33682",
            "brightGreen" : "#B58900",
            "brightPurple" : "#EEE8D5",
            "brightRed" : "#CB4B16",
            "brightWhite" : "#FDF6E3",
            "brightYellow" : "#586E75",
            "cyan" : "#2AA198",
            "foreground" : "#93A1A1",
            "green" : "#859900",
            "name" : "wsl",
            "purple" : "#6C71C4",
            "red" : "#DC322F",
            "white" : "#93A1A1",
            "yellow" : "#B58900"
        }
    ],

    // Add custom keybindings to this array.
    // To unbind a key combination from your defaults.json, set the command to "unbound".
    // To learn more about keybindings, visit https://aka.ms/terminal-keybindings
    "keybindings":
    [
        // Copy and paste are bound to Ctrl+Shift+C and Ctrl+Shift+V in your defaults.json.
        // These two lines additionally bind them to Ctrl+C and Ctrl+V.
        // To learn more about selection, visit https://aka.ms/terminal-selection
        { "command": {"action": "copy", "singleLine": false }, "keys": "ctrl+c" },
        { "command": "paste", "keys": "ctrl+v" },

        // Press Ctrl+Shift+F to open the search box
        { "command": "find", "keys": "ctrl+shift+f" },

        // Press Alt+Shift+D to open a new pane.
        // - "split": "auto" makes this pane open in the direction that provides the most surface area.
        // - "splitMode": "duplicate" makes the new pane use the focused pane's profile.
        // To learn more about panes, visit https://aka.ms/terminal-panes
        { "command": { "action": "splitPane", "split": "auto", "splitMode": "duplicate" }, "keys": "alt+shift+d" }
        
        // Remove F11 for shortcuts
        { "command": null, "keys": "f11" }
    ]
}
```

## Tmux Configuration

