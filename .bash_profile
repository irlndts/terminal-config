git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ git:(\1)/'
}

gen_prompt() {
	local EXIT="$?" 
	local yellow='\[\e[01;33m\]'
    local pink='\[\e[0;30;1;35m\]'
	local grey='\[\e[0m\]'
	local green='\[\e[0;32m\]'
	local blue='\[\e[1;34m\]'
	local red='\[\e[01;31m\]'


	FancyX='\342\234\227'
    Checkmark='\342\234\223'


	PS1="${yellow}\u${pink}[\t]${grey}:${green}\W${blue}$(git_branch)${yellow}"
	if [[ $EXIT == 0 ]]; then
        PS1+="$green ✓ "
    else
        PS1+="$red ✗ "
    fi

	PS1+="$grey"
}

PROMPT_COMMAND='gen_prompt'

export GOPATH=~/go
export PATH=$PATH:~/go/bin
export EDITOR=vim
export TERM="xterm-color"
#export PS1='\[\e[01;33m\]\u\[\e[0m\]\033[0;30;1;35m\][\t]\e[0m\]:\[\e[0;32m\]\W\[\e[1;34m\]$(git_branch)\[\e[01;33m\] ✗ \[\e[0m\]'
export GREP_OPTIONS='--color=always'

alias g="grep -iRn "

if [ -f /usr/share/bash-completion/bash_completion ]; then
	. /usr/share/bash-completion/bash_completion
fi
