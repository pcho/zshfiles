alias dww='wget -r -k -np'
alias editHosts='sudo vim /etc/hosts'

alias g='git'

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

alias vi='vim'
alias v='vi'

alias sup='sudo apt-get update && sudo apt-get upgrade'

alias pass='date +%s | sha256sum | base64 | head -c 32 ; echo'

alias phps='php -S 127.0.0.1:3000'
alias pys='python3 -m http.server 3000'

alias hs='hugo server -b http://$(hostname)/ --bind 0.0.0.0'
alias hsd='rnHsrv(){hugo server --port=3030 --baseUrl="$1" --appendPort=false};rnHsrv'

alias venv='python3 -m venv venv'
alias vas='. venv/bin/activate'
alias vad='deactivate'
alias pipup='pip install --upgrade pip'
alias pipupa='pip install -U $(pip freeze | cut -d "=" -f 1)'
alias cleanpip='pip uninstall -y -r <(pip freeze)'

alias addgit='eval `ssh-agent -s` ssh-add ~/.ssh/git'

alias d='cdDir(){ cd $HOME/.dotfiles/$1; };cdDir'
alias dev='cdDir(){ cd $HOME/.dev/$1; };cdDir'
