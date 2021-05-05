PROMPT='%F{004}(%n)%f %T %c $ '

bindkey -v

source $ZDOTDIR/.alias.zsh
source $ZDOTDIR/.export.zsh
source $ZDOTDIR/.complete.zsh
source $ZDOTDIR/.options.zsh

function _pip_completion {
  local words cword
  read -Ac words
  read -cn cword
  reply=( $( COMP_WORDS="$words[*]" \
             COMP_CWORD=$(( cword-1 )) \
             PIP_AUTO_COMPLETE=1 $words[1] ) )
}

compctl -K _pip_completion pip3
