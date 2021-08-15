#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
PS1='\[\e[0;1m\][\[\e[0;1;93m\]\u\[\e[0;1m\]@\[\e[0;1;94m\]\h \[\e[0;1;92m\]\W\[\e[0;1m\]]\[\e[0;1m\]\$ \[\e[0m\]'
alias ytdl-a='youtube-dl -x --audio-format mp3'