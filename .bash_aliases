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

#functions
#'command help' for command name and single option - ex: ch ls -A
ch() { whatis $1; man $1 | sed -n "/^\s*$2/,/^$/p" ; }
#'open latest' .txt file in current directory
ol() { \ls -t *.txt | head -1 | xargs gvim ; }
