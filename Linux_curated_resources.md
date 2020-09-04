Handful of useful resources for Linux command line and bash shell scripting

Guide to choosing your Linux Distribution, list of applications, etc: [awesome-linux](https://github.com/aleksandar-todorovic/awesome-linux#distributions) and [computefreely](https://computefreely.org/)

# :hash: Table of Contents

* [Courses: online text tutorials](#course-text)
* [Courses: online video/interactive tutorials](#course-interactive)
* [Shell Scripting](#shell-scripting)
    * [Scripting companion](#scripting-companion)
* [Books](#books)
* [Tips and Tricks](#tips-and-tricks)
* [Resources for specific commands](#specific-commands)
    * [Text and File processing](#text-file-processing)
    * [Miscellaneous](#miscellaneous)
* [Further Reading](#further-reading)
* [Forums](#forums)

<br>

# <a name="course-text"></a>Courses: online text tutorials

* [ryanstutorial](https://ryanstutorials.net/linuxtutorial/)
* [Bash Guide](https://mywiki.wooledge.org/BashGuide)
* [snipcademy](https://code.snipcademy.com/tutorials/linux-command-line)
* [linuxcommand](https://linuxcommand.org/lc3_learning_the_shell.php)
* [basics of linux commands](http://www.ee.surrey.ac.uk/Teaching/Unix/)
* [linux basics](https://miteshshah.github.io/linux/basics/)
* [learnenough](https://www.learnenough.com/command-line-tutorial/basics)

<br>

# <a name="course-interactive"></a>Courses: online video/interactive tutorials

* [linuxjourney](https://linuxjourney.com/)
* [udacity](https://www.udacity.com/course/linux-command-line-basics--ud595)
* [edx](https://www.edx.org/course/introduction-to-linux)
* [memrise](https://www.memrise.com/course/50252/shell-fu/)
* [shortcutfoo](https://www.shortcutfoo.com/app/dojos/command-line)
* [youtube — command line basics](https://www.youtube.com/watch?v=bE9DyH43C2I&list=PLVqGqrTs4ZWOhcApSWYIX_rnPMZDAClJa)

<br>

# <a name="shell-scripting"></a>Shell Scripting

* [Bash Guide](https://mywiki.wooledge.org/BashGuide)
* [ryanstutorial](https://ryanstutorials.net/bash-scripting-tutorial/)
* [bash handbook](https://github.com/denysdovhan/bash-handbook)
* [writing shell scripts](https://linuxcommand.org/lc3_writing_shell_scripts.php)
* [snipcademy](https://code.snipcademy.com/tutorials/shell-scripting)
* [learnshell](https://www.learnshell.org/)
* [bash shell scripting](https://en.wikibooks.org/wiki/Bash_Shell_Scripting)
* [Serious Shell Programming](https://www.gitbook.com/book/freebsdfrau/serious-shell-programming/details) — focuses on POSIX-compliant Bourne Shell for portability

### <a name="scripting-companion"></a>Scripting companion

* [shellcheck](https://www.shellcheck.net/) — linting tool to avoid common mistakes and improve your script
* [bash FAQ](https://mywiki.wooledge.org/BashFAQ), [bash Practices](https://mywiki.wooledge.org/BashGuide/Practices) and [bash pitfalls](https://mywiki.wooledge.org/BashPitfalls) — comprehensive lists
* [Google shell style guide](https://google.github.io/styleguide/shell.xml)
* tips for [safe ways to do things in bash](https://github.com/anordal/shellharden/blob/master/how_to_do_things_safely_in_bash.md) and [better scripting](https://robertmuth.blogspot.in/2012/08/better-bash-scripting-in-15-minutes.html) and [robust scripting](https://www.davidpashley.com/articles/writing-robust-shell-scripts/)
* [bash reference](https://devmanual.gentoo.org/tools-reference/bash/index.html) — nicely formatted and explained well

<br>

# <a name="books"></a>Books

* [Bash Guide](https://mywiki.wooledge.org/BashGuide)
* [The Linux Command Line](https://linuxcommand.org/tlcl.php)
* [Unix for beginning Mage](http://unixmages.com/wp-content/uploads/2018/12/ufbm.pdf)
* [Linux kernel and its insides](https://0xax.gitbooks.io/linux-insides/content/index.html)

<br>

# <a name="tips-and-tricks"></a>Tips and Tricks

* [art of command line](https://github.com/jlevy/the-art-of-command-line)
* [command line tricks](https://stackoverflow.com/questions/68372/what-is-your-single-most-favorite-command-line-trick-using-bash)
* [explainshell](https://explainshell.com/) — write down a command-line to see the help text that matches each argument
* [commandlinefu](https://www.commandlinefu.com/commands/browse/sort-by-votes) — also explore different tags like awk, grep, sed, etc
* [tldr](https://tldr.sh/) — Simplified and community-driven man pages

<br>

# <a name="specific-commands"></a>Resources for specific commands

* [Linux Commands In Structured Order](https://linoxide.com/guide/linux-command-shelf.html)
* [discussion on useful Linux commands](https://www.reddit.com/r/linuxadmin/comments/1x0ql2/whats_a_linux_command_you_wish_you_had_known/)
* [general purpose command line tools](http://www.compciv.org/unix-tools/)

### <a name="text-file-processing"></a>Text and File processing

* [My example based tutorial for various cli text processing tools](https://github.com/learnbyexample/Command-line-text-processing)
* [All about replacing strings in file(s)](https://unix.stackexchange.com/questions/112023/how-can-i-replace-a-string-in-a-files)
* [Text Processing Commands](https://tldp.org/LDP/abs/html/textproc.html)
* [ad-hoc data analysis](https://en.wikibooks.org/wiki/Ad_Hoc_Data_Analysis_From_The_Unix_Command_Line)
* grep
    * [My book on GNU grep and ripgrep](https://learnbyexample.github.io/learn_gnugrep_ripgrep/)
    * [alvinalexander](https://alvinalexander.com/unix/edu/examples/grep.shtml)
    * [conqueringthecommandline](http://conqueringthecommandline.com/book/grep)
    * [ripgrep](https://blog.burntsushi.net/ripgrep/)
    * [ack/ag](http://conqueringthecommandline.com/book/ack_ag)
* sed
    * [My book on GNU sed](https://learnbyexample.github.io/learn_gnused/)
    * [gentle intro](https://code.snipcademy.com/tutorials/shell-scripting/sed/introduction)
    * [grymoire](https://www.grymoire.com/Unix/Sed.html) — detailed tutorial, has details on differences between various `sed` versions as well
    * [sed one liners explained](https://catonmat.net/sed-one-liners-explained-part-one)
    * [Sed by Example Part 1](https://www.funtoo.org/Sed_by_Example,_Part_1), [Part 2](https://www.funtoo.org/Sed_by_Example,_Part_2), [Part 3](https://www.funtoo.org/Sed_by_Example,_Part_3)
    * [Learning Linux Commands: sed](https://linuxconfig.org/learning-linux-commands-sed)
* awk
    * [My book on GNU awk](https://learnbyexample.github.io/learn_gnuawk/)
    * [gawk manual](https://www.gnu.org/software/gawk/manual/gawk.html#SEC_Contents) for complete reference, examples, extensions and more
    * [gentle intro](https://code.snipcademy.com/tutorials/shell-scripting/awk/introduction)
    * [grymoire](https://www.grymoire.com/Unix/Awk.html) — detailed tutorial, covers information about different `awk` versions as well
    * [awk one liners explained](https://catonmat.net/awk-one-liners-explained-part-one)
    * [Awk by Example Part 1](https://www.funtoo.org/Awk_by_Example,_Part_1), [Part 2](https://www.funtoo.org/Awk_by_Example,_Part_2), [Part 3](https://www.funtoo.org/Awk_by_Example,_Part_3)
* [My tutorial on perl one-liners](https://github.com/learnbyexample/Command-line-text-processing/blob/master/perl_the_swiss_knife.md)
* [sort](https://www.skorks.com/2010/05/sort-files-like-a-master-with-the-linux-sort-command-bash/)
* find
    * [alvinalexander](https://alvinalexander.com/unix/edu/examples/find.shtml)
    * [conqueringthecommandline](http://conqueringthecommandline.com/book/find)

### <a name="miscellaneous"></a>Miscellaneous

* [Unix and Linux Permissions Primer](https://danielmiessler.com/study/unixlinux_permissions/)
* [Linux Permissions Primer Part I](https://archive.is/2CSlT) — archive copy of catchlinux website
* [rsync](https://www.digitalocean.com/community/tutorials/how-to-use-rsync-to-sync-local-and-remote-directories-on-a-vps)
* [htop](https://peteris.rocks/blog/htop/) — detailed tutorial
* [crontab examples](https://www.thegeekstuff.com/2009/06/15-practical-crontab-examples/)

<br>

# <a name="further-reading"></a>Further Reading

* [Unix as IDE](https://sanctum.geek.nz/arabesque/series/unix-as-ide/)
* [command line Q&A](https://unix.stackexchange.com/questions/tagged/command-line?sort=votes&pageSize=15)
* [learn-anything — linux](https://learn-anything.xyz/operating-systems/unix/linux)
* [awesome linux resources](https://github.com/itech001/awesome-linux-resources)
* [awesome shell resources](https://github.com/alebcay/awesome-shell) and [awesome bash](https://github.com/awesome-lists/awesome-bash)
* [bash hackers wiki](https://wiki.bash-hackers.org/start)
* [stronger shell](https://m.odul.us/blog/2015/8/12/stronger-shell) — learnings from Matt Bowen and list of resources
* [bash env variables](https://www.tricksofthetrades.net/2015/06/14/notes-bash-env-variables/)
* Application lists — for audio, video, graphics & design, development, games etc
    * [arch wiki](https://wiki.archlinux.org/index.php/List_of_applications)
    * [alternativeto](https://alternativeto.net/)
    * [GNU packages](https://www.gnu.org/manual/manual.html)
    * [youtube-dl](https://github.com/rg3/youtube-dl/)
    * [qutebrowser](https://qutebrowser.org/)
* Linux/Bash on Windows
    * [git-bash](https://gitforwindows.org/)
    * [cygwin](https://www.cygwin.com/)
    * [Linux Subsystem for Windows by Microsoft](https://en.wikipedia.org/wiki/Windows_Subsystem_for_Linux)

<br>

# <a name="forums"></a>Forums

Read instructions provided by respective forums before asking a question. Try solving it yourself before asking — searching online, manual, ask a colleague, etc. 

* [unix stackexchange](https://unix.stackexchange.com/)
* [commandline](https://www.reddit.com/r/commandline)
* [/r/bash](https://www.reddit.com/r/bash)
* [/r/linux4noobs](https://www.reddit.com/r/linux4noobs)
* [/r/linuxquestions](https://www.reddit.com/r/linuxquestions)
* [/r/linux](https://www.reddit.com/r/linux) — general linux discussion
* [askubuntu](https://askubuntu.com/questions/tagged/command-line?sort=votes&pageSize=15) — ubuntu specific as well as general linux topics
* [TuxURLs](https://tuxurls.com/) — Linux news aggregator

