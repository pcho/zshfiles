export HISTSIZE=0
export SAVEHIST=0

export PIP_CONFIG_FILE=$HOME/.pip/pip.conf
export XDG_DATA_HOME=$HOME/.xdg/
export LANGUAGE='en_US.UTF-8'
export LANG='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'
export LC_CTYPE='en_US.UTF-8'
export MANPAGER='vim -M +MANPAGER -'
export PAGER='less'
export LESS='-F -g -i -M -R -S -w -X -z-4'
export EDITOR='vim'
export VISUAL='vim'

case `uname` in
    Darwin)
        export HOMEBREW_NO_ANALYTICS=1
        export HOMEBREW_NO_INSECURE_REDIRECT=1
        export HOMEBREW_INSTALL_BADGE=1
        ;;
esac

if [ -f /.dockerenv ]; then
    export TERM='xterm-256color'

    export GOPATH=/.go
    export PATH=/.cargo/bin:$PATH
else
    export GOPATH=~/.go
    export PATH=$HOME/.cargo/bin:$PATH
fi

export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/go/bin

export PATH=$PATH:~/.bin
export PATH=$PATH:~/.yarn/bin
export PATH=$PATH:~/.bin/.setup

export PATH=/usr/local/sbin:$PATH
