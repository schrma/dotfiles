# check if fasd is installed
if (( ! ${+commands[fasd]} )); then
  return
fi

fasd_cache="${CACHEDIR}/fasd-init-cache"
if [[ "$commands[fasd]" -nt "$fasd_cache" || ! -s "$fasd_cache" ]]; then
  fasd --init posix-alias zsh-hook zsh-ccomp zsh-ccomp-install \
    zsh-wcomp zsh-wcomp-install >| "$fasd_cache"
fi
source "$fasd_cache"
unset fasd_cache

alias v='f -e vim'
alias sd='fasd -sid'     # interactive directory selection
alias sf='fasd -sif'     # interactive file selection
