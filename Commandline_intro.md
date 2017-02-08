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
* `cp` → copy files and directories
* `mv` → move (rename) files

These one line explanations are copied from output of `whatis` command. For example, `whatis ls`. For builtin commands like `cd`, use `help -d cd`


<br><br>
# <a name="getting-help"></a>Getting help

* `man man` get help about manual pages
	* usually displayed using `less` command, press `q` key to quit the man page and `h` key to get help
	* for GNU/Linux commands, the `info` command has more detailed documentation
* `man bash` manual page for `bash`
	* `gvim <(man bash)` open the manual page in text editor instead of displaying in terminal
* `man -k printf` search manual pages for `printf`
    * `man -k` is equivalent for `apropos` command
* `type` Display information about command type
	* `type cd` cd is a shell builtin
	* `type sed` sed is /bin/sed
	* `type ls` ls is aliased to `ls --color=auto`
* Use `help` for builtin commands
	* `help help` help page on `help` command
	* `help -m cd` display usage in pseudo-manpage format for `cd` command
	* `help -d compgen` use -d option to output short description for each topic
	* `help` display all shell commands that are defined internally
* `whatis` display one-line manual page descriptions
    * `whatis grep` print lines matching a pattern
* `whereis` locate the binary, source, and manual page files for a command
    * `whereis awk` awk: /usr/bin/awk /usr/bin/X11/awk /usr/share/awk /usr/share/man/man1/awk.1.gz
* `history` Display or manipulate the history list
* Excellent resource: [How do I use man pages to learn how to use commands?](https://unix.stackexchange.com/questions/193815/how-do-i-use-man-pages-to-learn-how-to-use-commands)

<br><br>
# <a name="do-one-thing-well"></a>Do one thing and do it well

**Command Structure**

only the command

* `clear` clear the terminal screen
* `top` display Linux processes

command with options

* `ls -l` list directory contents, use a long listing format
* `df -h` report file system disk space usage, print sizes in human readable format (e.g., 1K 234M 2G)

command with arguments

* `mkdir project` create directory named 'project' in current working directory
* `man sort` manual page for `sort` command
* `wget http://s.ntnu.no/bashguide.pdf` download file from internet

command with options and arguments

* `rm -r project` remove 'project' directory 
* `find . -name '*log*'` print files in current directory (and its sub-directories) whose name contains the string 'log'

single quotes vs double quotes

* **single quotes** preserves the literal value of each character within the quotes
* **double quotes** preserves the literal value of all characters within the quotes, with the exception of '$', '`', '\', and, when history expansion is enabled, '!'
* [Difference between single and double quotes](https://stackoverflow.com/questions/6697753/difference-between-single-and-double-quotes-in-bash)

Example:

```bash
$ echo '$SHELL'
$SHELL
$ echo "$SHELL"
/bin/bash
```

**Command Network**

Redirecting output of a command

* to another command
    * `du -sh * | sort -h` calculate size of files/folders, display size in human-readable format which is then sorted
* to a file (instead of displaying on terminal)
    * `grep -i 'pass' *.log > pass_list.txt` writes/overwrites to file
    * `grep -i 'error' *.log >> errors.txt` appends to file

Redirecting input

* `wc -l < file.txt` in this case, useful to get just the number of lines, without displaying file name

Redirecting error

* `xyz 2> cmderror.log` assuming a non-existent command `xyz`, it would give an error and gets redirected to specified file

Redirecting output of command as input file

* `comm -23 <(sort file1.txt) <(sort file2.txt)` allows to create named pipes, effectively avoiding need to create temporary files

Combining output of several commands

* `(head -5 ~/.vimrc ; tail -5 ~/.vimrc) > vimrc_snippet.txt` multiple commands can be grouped in `()` and redirected as if single command output

Command substitution

* `sed -i "s|^|$(basename $PWD)/|" dir_list.txt` add current directory path and forward-slash character at the start of every line
    * Note the use of double quotes

stdin, stdout and stderr

* `<` or `0<` is stdin filehandle
* `>` or `1>` is stdout filehandle
* `2>` is stderr filehandle
* [read more](https://stackoverflow.com/questions/3385201/confused-about-stdin-stdout-and-stderr)

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
	* `ch() { whatis $1; man $1 | sed -n "/^\s*$2/,/^$/p" ; }`

* command line short-cuts
	* `Tab` → auto complete
        * `set show-all-if-ambiguous on` → add this to `~/.inputrc`, auto complete if unique, show completion options otherwise
	* `Ctrl+l` → clear terminal screen, preserves whatever is already typed
	* `Esc+.` → get last argument of previous command, `!$` does same but doesn't expand 
	* `sudo !!` → execute last command as root user


<br><br>
# <a name="no-need-script"></a>You don't need a script for that
* `sed -i 's/cat/dog/g' *.txt` → replace all instances of cat with dog in all files ending with .txt in current directory
* `find report -name '*.log' -exec rm {} +` → delete all files ending with .log in report and its sub-folders
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
