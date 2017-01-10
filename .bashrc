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
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

# set INPUTRC path if needed by uncommenting line below
#INPUTRC=~/.inputrc

# set a simple prompt
# check out http://bashrcgenerator.com/ to generate fancy and colorful prompt
PS1='$ '

# further reading
# https://github.com/mrzool/bash-sensible/blob/master/sensible.bash
# https://github.com/learnbyexample/Linux_command_line/blob/master/Shell_Customization.md#config-files
