############
# .bashrc ##
############

## My super 1337 and sexy prompt
PS1='\n\[\e[0;95m\][\D{%I:%M%P}]\[\e[0;97m\][\D{%m-%d-%y}]\[\e[0;32m\][\h]\[\e[m\]\[\e[1;34m\][\w]\[\e[m\]\n\[\e[1;36m\]>>> \$\[\e[m\] \[\e[0;93m\]'

## Aliases
alias rm='rm -i'
alias mv='mv -i'
alias ls='ls --color=auto'
alias la='ls -a'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

## Personal aliases -- REMOVE IF SHARED
alias sshpi='ssh pi@192.168.0.101'
alias sshdell='ssh josh@192.168.0.100'

## Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

## Enable programmable completion features ## copied from mint's default bashrc
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

## Autostart tmux
# If not running interactively, do not do anything
[[ $- != *i* ]] && return
[[ -z "$TMUX" ]] && exec tmux
