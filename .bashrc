# Command history settings
# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignorespace:erasedups
HISTSIZE=5000
HISTFILESIZE=10000
# append to the history file, don't overwrite it
shopt -s histappend

# Update window size after every command
shopt -s checkwinsize

# source aliases
source ~/.bash_aliases
# set INPUTRC path if needed by uncommenting line below
#INPUTRC=~/.inputrc



# for more useful settings: https://github.com/mrzool/bash-sensible/blob/master/sensible.bash
