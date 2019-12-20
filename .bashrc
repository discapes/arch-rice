#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
# PS1='[\u@\h \W]\$ '
PS1='(\W) \$ '

cat ~/.cache/wal/sequences

alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'

alias neoncava='cava -p ~/.config/cava/neonconfig'

alias rainycava='cava -p ~/.config/cava/rainyconfig'

alias shut='shutdown now'
