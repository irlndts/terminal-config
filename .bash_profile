export GOPATH=~/go
export PATH=$PATH:~/go/bin
export EDITOR=vim
export TERM="xterm-color"
export PS1='\[\e[01;33m\]\u\[\e[0m\]\033[0;30;1;35m\][\t]\e[0m\]:\[\e[0;32m\]\w\[\e[0m\]\$ '
# export PS1='\u[\t]\h:\w\$ '
export GREP_OPTIONS='--color=always'

alias g="grep -iR "

if [ -f /usr/share/bash-completion/bash_completion ]; then
	. /usr/share/bash-completion/bash_completion
fi
