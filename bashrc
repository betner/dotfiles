#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on'
export EDITOR=/usr/bin/emacs
set -o emacs

alias ls='ls --color=auto'
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias redwm='cd ~/code/dwm; updpkgsums; makepkg -fi --noconfirm  && killall dwm'
alias zZzZ='sudo systemctl suspend'
alias lock='~/bin/lock.sh'

# less colors
export LESS=-R
export LESS_TERMCAP_me=$(printf '\e[0m')
export LESS_TERMCAP_se=$(printf '\e[0m')
export LESS_TERMCAP_ue=$(printf '\e[0m')
export LESS_TERMCAP_mb=$(printf '\e[1;32m')
export LESS_TERMCAP_md=$(printf '\e[1;34m')
export LESS_TERMCAP_us=$(printf '\e[1;32m')
export LESS_TERMCAP_so=$(printf '\e[1;44;1m')

# Ruby gem (rails etc.)
export PATH=$PATH:$(ruby -rubygems -e "puts Gem.user_dir")/bin:~/bin

PS1='[\u@\h \W]\$ '
