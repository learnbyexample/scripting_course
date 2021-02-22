alias a='alias'

a c='clear'
a p='pwd'
a e='exit'
a q='exit'

a h='history | tail -20'
# turn off history, use 'set -o history' to turn it on again
a so='set +o history'

a b1='cd ../'
a b2='cd ../../'
a b3='cd ../../../'
a b4='cd ../../../../'
a b5='cd ../../../../../'

a ls='ls --color=auto'
a l='ls -ltrh'
a la='l -A'
a vi='gvim'
a grep='grep --color=auto'
a egrep='egrep --color=auto'

a oa='vi ~/.bash_aliases'
a sa='source ~/.bash_aliases'
# sort file/directory sizes in current directory in human readable format
a s='du -sh * | sort -h'

# save last command from history to a file
# tip, add a comment to end of command before saving, ex: ls --color=auto # colored ls output
a sl='fc -ln -1 | sed "s/^\s*//" >> ~/.saved_commands.txt'
# short-cut to grep that file
a slg='< ~/.saved_commands.txt grep'

# change ascii alphabets to unicode bold characters
a ascii2bold="perl -Mopen=locale -Mutf8 -pe 'tr/a-zA-Z/𝗮-𝘇𝗔-𝗭/'"

### functions
# 'command help' for command name and single option - ex: ch ls -A
# see https://github.com/learnbyexample/command_help for a better script version
ch() { whatis $1; man $1 | sed -n "/^\s*$2/,/^$/p" ; }

# add path to filename(s)
# usage: ap file1 file2 etc
ap() { for f in "$@"; do echo "$PWD/$f"; done; }

# simple case-insensitive file search based on name
# remove '-type f' if you want to match directories as well
fs() { find -type f -iname '*'"$@"'*' ; }

# open files with default application, don't print output/error messages
# useful for opening docs, pdfs, images, etc from command line
o() { gnome-open "$@" &> /dev/null ; }

# if unix2dos and dos2unix commands aren't available by default
unix2dos() { sed -i 's/$/\r/' "$@" ; }
dos2unix() { sed -i 's/\r$//' "$@" ; }

# vim: syntax=bash
