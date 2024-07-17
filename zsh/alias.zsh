
# reload zsh config
alias reload!='RELOAD=1 source ~/.zshrc'

colorflag="--color"

# start totalcommander in current folder
alias total='TOTALCMD64.EXE /O /L="$(wslpath -w `pwd`)"'

# Basic aliases
alias ls='exa'
alias ll='exa -l --icons --group-directories-first -G'
alias la='exa -a'
alias lla='exa -la --icons --group-directories-first -G'

# Tree view
alias tree='exa --tree'

# Tree view
alias tree1='exa --tree -L 1'

# Show all files in tree view
alias tree2='exa --tree -L 2'

# Long listing with all files and Git information
alias lag='exa -la --git'

# View only directories
alias lsd='exa --dirs-only'

alias lsf='exa --files-only'

# batcat
alias cat="batcat"
alias catp='batcat -pp'

# Helpers
alias grep='grep --color=auto'
alias df='df -h' # disk free, in Gigabytes, not bytes
alias du='du -h -c' # calculate disk usage for a folder

# Tmux
alias tl='tmux ls'
alias ta='tmux a'
alias tk='tmux kill-session -t'

# ssh
alias sr='ssh -p 1022 marco@neukirch.spdns.org'

# Git

alias gcam='git commit -a -m'
alias gb='git checkout -b'
alias gcm='git checkout master'
alias gco='git checkout'
alias gcount='git shortlog -sn'
alias glol="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'"
alias glog='git log --oneline --decorate --graph'
alias gloga='git log --oneline --decorate --graph --all'
alias gsb='git status -sb'
alias gst='git status'

# fsz

# Search for a file in the current directory
alias ffind='fzf'

# Find a file and open it with vim
alias vfind='vim $(fzf)'

# Search for a directory and change into it
alias cdf='cd $(find . -type d | fzf)'

# Recursively search for a file and open it with vim
alias vf='vim $(find . -type f | fzf)'

# Select an SSH connection from known_hosts
alias sshf='cat -p ~/.ssh/known_hosts | cut -f 1 -d " " | sed "s/,.*//" | sort -u | fzf | xargs -o ssh'

# Search command history and copy to clipboard using xclip
alias hfind='history | fzf | cut -d" " -f4- | xclip -selection clipboard'

# Function to preview file content and open with vim
fzf_preview() {
  local file
  file=$(fzf --preview 'cat {}')
  [ -n "$file" ] && vim "$file"
}
alias fp='fzf_preview'
 
if [[ -a ~/.localdot/alias.zsh ]]; then
    source ~/.localdot/alias.zsh
fi

