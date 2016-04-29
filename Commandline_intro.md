Reference sheet for a 30-45 minute presentation on 'Introduction to *nix command line'

# Table of contents
* [Basic commands](#basic-commands)
* [Getting help](#getting-help)
* [Do one thing and do it well](#do-one-thing-well)
* [Save your keystrokes](#save-keystrokes)
* [You don't need a script for that](#no-need-script)
* [Resources list](#resources-list)

# <a name="basic-commands"></a>Basic commands

* `ls` → list directory contents
* `cd` → Change the shell working directory
* `pwd` → print name of current/working directory
* `touch` → change file timestamps, also used to create empty file
* `mkdir` → make directories
* `rm` → remove files or directories
* `mv` → move (rename) files

These one line explanations are copied from output of `whatis` command. For example, `whatis ls`. For builtin commands like `cd`, use `help -d cd`


<br><br>
# <a name="getting-help"></a>Getting help

* `man man` → meta, get help about manual pages itself, press `q` to exit
* `man bash` → manual page for `bash`
	* `gvim <(man bash)` → open the manual page in text editor instead of displaying in terminal
* `man -k printf` → search manual pages for `printf`
* `type` → Display information about command type
	* `type cd` → cd is a shell builtin
	* `type man` → man is /usr/bin/man
	* `type ls` → ls is aliased to `ls --color=auto'
* Use `help` for builtin commands instead of `man`
	* `help help` → meta, help page on `help` command
	* `help -m cd` → display usage in pseudo-manpage format for `cd` command
	* `help -d compgen` → Display possible completions depending on the options
* `whatis` → display one-line manual page descriptions
* `whereis` → locate the binary, source, and manual page files for a command


<br><br>
# <a name="do-one-thing-well"></a>Do one thing and do it well

### command structure
* only the command
	* `clear`
	* `top`
* command with options
	* `ls -l`
	* `df -h`
* command with arguments
	* `mkdir project`
	* `man sed`
    * `wget http://s.ntnu.no/bashguide.pdf`
* command with options and arguments
	* `rm -rf project`
	* `find . -name '*log*'`

### command network

Redirecting output of a command
* to another command
    * `du -sh * | sort -h`  → calculate size of files/folders, display size in human-readable format which is then sorted
    * `ls -t *.txt | head -1 | xargs gvim` → open most recently created/modified .txt file with gvim
    * `history | awk '{ print $2}' | sort | uniq -c | sort -nr` → sort commands in your history by number of times used
* to a file (instead of displaying on terminal)
    * `ls *.txt > text_files.list` → writes/overwrites to file
    * `ls *.txt >> text_files.list` → appends to file

Redirecting input
* `wc -l < file.txt` → in this case, useful to get just the number of lines, without displaying file name

Redirecting error
* `xyz 2> /dev/null` → assuming a non-existent command `xyz`, it would give an error. In this case, it is redirected to null device which just discards it

Redirecting output of command as input file
* `comm -23 <(sort file1.txt) <(sort file2.txt)` → allows to create named pipes, effectively avoiding need to create temporary files

Combining output of several commands
* `(head -5 ~/.vimrc ; tail -5 ~/.vimrc) > vimrc_snippet.txt` → multiple commands can be grouped in `()` and redirected as if single command output

Substituting output of command in a string
* `sed -r -i "s/(.*)/$(pwd | xargs basename) \1/" *.txt` → the current directory name is inserted at start of every line


<br><br>
# <a name="save-keystrokes"></a>Save your keystrokes

* regular expression elements `*?[]{}`
* [history](https://github.com/learnbyexample/scripting_course/blob/master/.bashrc)
	* `Ctrl+r` → press this sequence and type to search that occurrence in history. Press `Ctrl+r` to traverse further back
	* press UP/DOWN arrow key to traverse through history matching commands starting with what you typed (add these lines to [~/.inputrc](https://github.com/learnbyexample/scripting_course/blob/master/.inputrc))
        * `"\e[A": history-search-backward`
        * `"\e[B": history-search-forward`

* [alias](https://github.com/learnbyexample/scripting_course/blob/master/.bash_aliases)
	* `alias grep='grep --color=auto'`
	* `alias b1='cd ../'` , `alias b2='cd ../../'` and so on
	* `ol() { ls -t *.txt | head -1 | xargs gvim ; }`

* command line short-cuts
	* `Tab` → auto complete
        * `set show-all-if-ambiguous on` → add this to `~/.inputrc`, auto complete if unique, show completion options otherwise
	* `Ctrl+l` → clear terminal screen, preserves whatever is already typed
	* `Esc+.` → get last argument of previous command, `!$` does same but doesn't expand 
	* `sudo !!` → execute last command as root user


<br><br>
# <a name="no-need-script"></a>You don't need a script for that
* `sed -i 's/cat/dog/g' *.txt` → replace all instances of cat with dog in all files ending with .txt in current directory
* `find report -name '*.log' -exec rm {} \;` → delete all files ending with .log in report and its sub-folders
* `rename 's/txt$/log/' *txt` → rename all files in current directory ending with 'txt' to 'log'
* `convert -delay 25 -loop 1 DSC_012{0..4}.JPG jump.gif` → create gif, no loop
* `pngquant -f --quality=50-80 --ext .png *.png` → reduce size of PNG files (lossy)
* `youtube-dl -cit 'https://www.youtube.com/playlist?list=PL0-84-yl1fUnRuXGFe_F7qSH1LEnn9LkW'` → download playlist

<br><br>
# <a name="resources-list"></a>Resources list
* [Linux Curated resources](https://github.com/learnbyexample/scripting_course/blob/master/Linux_curated_resources.md)
	* [linuxtutorial](http://ryanstutorials.net/linuxtutorial/) → simple intro
	* [bashguide](http://mywiki.wooledge.org/BashGuide) → very detailed with best practices, FAQs, pitfalls, etc
* [explainshell](http://explainshell.com/)
* [shellcheck](http://www.shellcheck.net/)
* [sample cheatsheet](http://ryanstutorials.net/linuxtutorial/cheatsheet.php)
* [command line gems](http://www.commandlinefu.com/commands/browse/sort-by-votes)
* [online forums to get help](https://github.com/learnbyexample/scripting_course/blob/master/Linux_curated_resources.md#forums)
    * [Devs and Hackers](https://join.theindiangeek.in/) → slack group
