# Command history settings
# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignorespace:erasedups
HISTSIZE=5000
HISTFILESIZE=10000
# append to the history file, don't overwrite it
shopt -s histappend

# Update window size after every command
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar
# extended globs, see https://mywiki.wooledge.org/glob#Options_which_change_globbing_behavior
#shopt -s extglob

# color man page in vim
#export MANPAGER='env MAN_PN=1 vim --not-a-term -M +MANPAGER -'

# source aliases
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

# set INPUTRC path if needed by uncommenting line below
#INPUTRC=~/.inputrc

# set a simple prompt
PS1='$ '
# see https://starship.rs/ minimal, blazing-fast, and infinitely customizable prompt
# also check out http://bashrcgenerator.com/ to generate fancy and colorful prompt
# https://wiki.archlinux.org/index.php/Bash/Prompt_customization

# further reading
# https://github.com/mrzool/bash-sensible/blob/master/sensible.bash
# https://github.com/learnbyexample/Linux_command_line/blob/master/Shell_Customization.md#config-files
