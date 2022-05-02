
[ -f "/Users/laz/.ghcup/env" ] && source "/Users/laz/.ghcup/env" # ghcup-env

eval "$(starship init zsh)"

alias config="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"

if test -e $HOME/.config/local.zsh
then
    source $HOME/.config/local.zsh
fi
