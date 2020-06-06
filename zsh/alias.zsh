
# reload zsh config
alias reload!='RELOAD=1 source ~/.zshrc'

colorflag="--color"

alias l="ls -lah ${colorflag}"
alias la="ls -AF ${colorflag}"
alias ll="ls -lFh ${colorflag}"
alias lld="ls -l | grep ^d"
alias rmf="rm -rf"

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
alias gcb='git checkout -b'
alias gcm='git checkout master'
alias gco='git checkout'
alias gcount='git shortlog -sn'
alias glol="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'"
alias glog='git log --oneline --decorate --graph'
alias gloga='git log --oneline --decorate --graph --all'
alias gsb='git status -sb'
alias gst='git status'

alias gload='source ~/.oh-my-zsh/plugins/git-plugin.zsh'

echo "11111111111111"
if [[ -a ~/.localdot/alias.zsh ]]; then
    echo "--------------"
    source ~/.localdot/alias.zsh
fi

