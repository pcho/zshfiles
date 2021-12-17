PROMPT='%F{004}(%n)%f %T %~ $ '

bindkey -v

eval $(dircolors ~/.dircolors)

source $ZDOTDIR/.alias.zsh
source $ZDOTDIR/.export.zsh
source $ZDOTDIR/.complete.zsh
source $ZDOTDIR/.options.zsh

source "$HOME/.fzf.zsh"
