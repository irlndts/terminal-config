git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ git:(\1)/'
}

export GOPATH=~/go
export PATH=$PATH:~/go/bin
export EDITOR=vim
export TERM="xterm-color"
export PS1='\[\e[01;33m\]\u\[\e[0m\]\033[0;30;1;35m\][\t]\e[0m\]:\[\e[0;32m\]\W\[\e[1;34m\]$(git_branch)\[\e[01;33m\] ✗ \[\e[0m\]'
export GREP_OPTIONS='--color=always'

alias g="grep -iRn "

if [ -f /usr/share/bash-completion/bash_completion ]; then
	. /usr/share/bash-completion/bash_completion
fi
