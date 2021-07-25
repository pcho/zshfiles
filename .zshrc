PROMPT='%F{004}(%n)%f %T %c $ '

bindkey -v

eval $(dircolors ~/.dircolors)

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

if [[ ! "$PATH" == */$HOME/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}$HOME/.fzf/bin"
fi

[[ $- == *i* ]] && source "$HOME/.fzf/shell/completion.zsh" 2> /dev/null

source "$HOME/.fzf/shell/key-bindings.zsh"
