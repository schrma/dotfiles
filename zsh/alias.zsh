
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

# Show alias from this file
alias aliashow='cat ~/.dotfiles/zsh/alias.zsh'



