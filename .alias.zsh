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

alias pgrep='pgrep -il'
alias remove='rm -rfv'

alias vi='vim'
alias v='vi'

alias pass='openssl rand -base64 32'

alias irc='weechat'

alias phps='php -S 127.0.0.1:3000'
alias pys='python3 -m http.server 3000'

alias hs='hugo server -b http://$(hostname)/ --bind 0.0.0.0'
alias hsd='rnHsrv(){hugo server --port=3000 --baseUrl="$1" --appendPort=false};rnHsrv'
alias cdr='cdd(){sudo caddy reverse-proxy --from asiabet.me --to 0.0.0.0:"$1"};cdd'

alias venv='python3 -m venv venv'
alias vas='. venv/bin/activate'
alias vad='deactivate'
alias pipup='pip install --upgrade pip'
alias pipupa='pip install -U $(pip freeze | cut -d "=" -f 1)'
alias cleanpip='pip uninstall -y -r <(pip freeze)'

alias addgit='eval `ssh-agent -s` ssh-add ~/.ssh/git'
alias addhub='eval `ssh-agent -s` ssh-add ~/.ssh/hub'

alias b='cdDir(){ cd $HOME/.bin/$1; };cdDir'
alias d='cdDir(){ cd $HOME/.dotfiles/$1; };cdDir'

case `uname` in
    Darwin)
        alias clearcache='sudo killall -HUP mDNSResponder'
        alias removebrew='brew remove --force $(brew list)'
        alias -g clean='find . -type f -name "*.DS_Store" -ls -delete'
        alias ls='ls -la'
        alias s='cdDir(){ cd $HOME/Sites/$1; };cdDir'
        ;;
    Linux)
        alias sup='sudo apt-get update && sudo apt-get upgrade'
        alias supk='sudo apt-key adv --refresh-keys --keyserver keyserver.ubuntu.com'
        alias ls='ls -la --color=auto'
        alias dev='cdDir(){ cd $HOME/.dev/$1; };cdDir'
        alias snc='cdDir(){ cd $HOME/.sync/$1; };cdDir'
        ;;
esac
