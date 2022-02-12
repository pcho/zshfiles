alias mv='mv -v'
alias rm='rm -i -v'
alias cp='cp -v'
alias ..='cd ..'
alias df='df -h'
alias du='du -shc'

alias lh='ls -d .*'
alias ll='ls -FGlAhp'
alias ls='ls -la --color=auto'

alias pgrep='pgrep -il'
alias remove='rm -rfv'

alias g='git'
alias vi='vim'
alias v='vi'

alias pass='date +%s | sha256sum | base64 | head -c 32 ; echo'
alias sup='sudo apt-get update && sudo apt-get upgrade'
alias dev='cdDir(){ cd $HOME/.dev/$1; };cdDir'
