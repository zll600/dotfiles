#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export EDITOR='vim'

# for go
export GOPATH=$HOME/Code/go
export GOBIN=$GOPATH/bin

# for git

export PS1="\[\033[01;36m\]\u@\h \[\033[0;36m\]\W\[\033[0m\]\[\033[0;32m\]\$(git-branch-prompt)\[\033[0m\] \$ "

function git-branch-name {
	git symbolic-ref HEAD 2>/dev/null | cut -d"/" -f 3
}

function git-branch-prompt {
	local branch=$(git-branch-name)
	if [ $branch ]; then printf " [%s]" $branch; fi
}

# for rust
. "$HOME/.cargo/env"
export RUSTBIN="$HOME/.cargo/bin"

# for .local directory
export LOCALBIN="$HOME/.local/bin"

export PATH=$GOBIN:$RUSTBIN:$LOCALBIN:$PATH

# for autojump
[[ -s /etc/profile.d/autojump.sh ]] && source /etc/profile.d/autojump.sh
source /usr/share/nvm/init-nvm.sh
