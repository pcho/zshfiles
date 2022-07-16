HISTFILE=~/.dotfiles/.zsh/history
HISTSIZE=32768
SAVEHIST=32768

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
export FZF_DEFAULT_COMMAND='fdfind --type f --hidden --follow --exclude node_modules --exclude .git --exclude venv'

export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/go/bin

export PATH=$PATH:~/.bin
export PATH=$PATH:~/.bin/setup

export PNPM_HOME=$HOME/.xdg/pnpm
export PATH=$PNPM_HOME:$PATH
