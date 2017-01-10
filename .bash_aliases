alias a='alias'

a c='clear'
a p='pwd'
a e='exit'
a q='exit'
a h='history | tail -20'

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

### functions
# 'command help' for command name and single option - ex: ch ls -A
# see https://github.com/learnbyexample/command_help for a better script version
ch() { whatis $1; man $1 | sed -n "/^\s*$2/,/^$/p" ; }

# add path to filename(s)
# usage: ap file1 file2 etc
ap() { for f in "$@"; do echo "$PWD/$f"; done; }

# open files with default application, don't print output/error messages
# useful for opening docs, pdfs, images, etc from command line
o() { gnome-open "$@" &> /dev/null ; }

# if unix2dos and dos2unix commands aren't available by default
unix2dos() { perl -i -pe 's|\n|\r\n|' "$@" ; }
dos2unix() { perl -i -pe 's|\r\n|\n|' "$@" ; }
