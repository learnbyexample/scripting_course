Handful of useful resources for Linux command line and bash shell scripting

Guide to choosing your Linux Distribution, list of applications, etc: [awesome-linux](https://github.com/aleksandar-todorovic/awesome-linux#distributions) and [computefreely](http://computefreely.org/)

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
* [snipcademy](https://code.snipcademy.com/tutorials/linux-command-line)
* [linuxcommand](http://linuxcommand.org/lc3_learning_the_shell.php)
* [basics of linux commands](http://www.ee.surrey.ac.uk/Teaching/Unix/)
* [linux basics](https://miteshshah.github.io/linux/basics/)
* [learnenough](https://www.learnenough.com/command-line-tutorial)

<br>

# <a name="course-interactive"></a>Courses: online video/interactive tutorials

* [linuxjourney](https://linuxjourney.com/)
* [udacity](https://www.udacity.com/course/linux-command-line-basics--ud595)
* [edx](https://www.edx.org/course/introduction-linux-linuxfoundationx-lfs101x-0)
* [memrise](https://www.memrise.com/course/50252/shell-fu/)
* [shortcutfoo](https://www.shortcutfoo.com/app/dojos/command-line)
* [youtube - command line basics](https://www.youtube.com/watch?v=bE9DyH43C2I&list=PLVqGqrTs4ZWOhcApSWYIX_rnPMZDAClJa)

<br>

# <a name="shell-scripting"></a>Shell Scripting

* [Bash Guide](https://mywiki.wooledge.org/BashGuide)
* [ryanstutorial](https://ryanstutorials.net/bash-scripting-tutorial/)
* [bash handbook](https://github.com/denysdovhan/bash-handbook)
* [writing shell scripts](http://linuxcommand.org/lc3_writing_shell_scripts.php)
* [snipcademy](https://code.snipcademy.com/tutorials/shell-scripting)
* [learnshell](https://www.learnshell.org/)
* [bash shell scripting](https://en.wikibooks.org/wiki/Bash_Shell_Scripting)
* [Serious Shell Programming](https://www.gitbook.com/book/freebsdfrau/serious-shell-programming/details) - focuses on POSIX-compliant Bourne Shell for portability

### <a name="scripting-companion"></a>Scripting companion

* [shellcheck](https://github.com/koalaman/shellcheck) - linting tool to avoid common mistakes
* [bash FAQ](https://mywiki.wooledge.org/BashFAQ), [bash Practices](https://mywiki.wooledge.org/BashGuide/Practices) and [bash pitfalls](https://mywiki.wooledge.org/BashPitfalls) - comprehensive lists
* [Google shell style guide](https://google.github.io/styleguide/shell.xml)
* tips for [better scripting](https://robertmuth.blogspot.in/2012/08/better-bash-scripting-in-15-minutes.html) and [robust scripting](https://www.davidpashley.com/articles/writing-robust-shell-scripts/)
* [bash reference](https://devmanual.gentoo.org/tools-reference/bash/index.html) - nicely formatted and explained well

<br>

# <a name="books"></a>Books

* [Bash Guide](https://mywiki.wooledge.org/BashGuide)
* [The Linux Command Line](http://linuxcommand.org/tlcl.php)
* [Unix for beginning Mage](http://unixmages.com/ufbm.pdf)
* [Linux kernel and its insides](https://0xax.gitbooks.io/linux-insides/content/index.html)

<br>

# <a name="tips-and-tricks"></a>Tips and Tricks

* [art of command line](https://github.com/jlevy/the-art-of-command-line)
* [command line tricks](https://stackoverflow.com/questions/68372/what-is-your-single-most-favorite-command-line-trick-using-bash)
* [explainshell](https://explainshell.com/) - write down a command-line to see the help text that matches each argument
* [commandlinefu](https://www.commandlinefu.com/commands/browse/sort-by-votes) - also explore different tags like awk, grep, sed, etc
* [time saving tips](https://www.quora.com/What-are-some-time-saving-tips-that-every-Linux-user-should-know)

<br>

# <a name="specific-commands"></a>Resources for specific commands

* [Linux Commands In Structured Order](https://linoxide.com/guide/linux-command-shelf.html)
* [discussion on useful Linux commands](https://www.reddit.com/r/linuxadmin/comments/1x0ql2/whats_a_linux_command_you_wish_you_had_known/)
* [general purpose command line tools](http://www.compciv.org/unix-tools/)

### <a name="text-file-processing"></a>Text and File processing

* [All about replacing strings in file(s)](https://unix.stackexchange.com/questions/112023/how-can-i-replace-a-string-in-a-files)
* [Text Processing Commands](https://tldp.org/LDP/abs/html/textproc.html)
* [ad-hoc data analysis](https://en.wikibooks.org/wiki/Ad_Hoc_Data_Analysis_From_The_Unix_Command_Line)
* grep examples: [alvinalexander](https://alvinalexander.com/unix/edu/examples/grep.shtml) and [conqueringthecommandline](http://conqueringthecommandline.com/book/grep)
* find examples: [alvinalexander](https://alvinalexander.com/unix/edu/examples/find.shtml) and [conqueringthecommandline](http://conqueringthecommandline.com/book/find)
* awk
    * [gawk manual](https://www.gnu.org/software/gawk/manual/gawk.html#SEC_Contents) for complete reference, extensions and more
    * [gentle intro](https://code.snipcademy.com/tutorials/shell-scripting/awk/introduction)
    * [grymoire](http://www.grymoire.com/Unix/Awk.html) - detailed tutorial
    * [awk one liners explained](http://www.catonmat.net/series/awk-one-liners-explained)
    * [awk by example](https://www.funtoo.org/Awk_by_Example,_Part_1)
* sed
    * [gentle intro](https://code.snipcademy.com/tutorials/shell-scripting/sed/introduction)
    * [grymoire](http://www.grymoire.com/Unix/sed.html) - detailed tutorial
    * [sed one liners explained](http://www.catonmat.net/series/sed-one-liners-explained)
    * [sed by example](https://www.funtoo.org/Sed_by_Example,_Part_1)
    * [Learning Linux Commands: sed](https://linuxconfig.org/learning-linux-commands-sed)
* [ack/ag](http://conqueringthecommandline.com/book/ack_ag) - searching a large number of files fast and easy
* [sort](https://www.skorks.com/2010/05/sort-files-like-a-master-with-the-linux-sort-command-bash/)

### <a name="miscellaneous"></a>Miscellaneous

* [Unix and Linux Permissions Primer](https://danielmiessler.com/study/unixlinux_permissions/)
* [Linux Permissions Primer Part I](http://archive.is/2CSlT) - archive copy of catchlinux website
* [rsync](https://www.digitalocean.com/community/tutorials/how-to-use-rsync-to-sync-local-and-remote-directories-on-a-vps)
* [htop](https://hisham.hm/htop/index.php?page=main)
* [crontab examples](https://www.thegeekstuff.com/2009/06/15-practical-crontab-examples/)

<br>

# <a name="further-reading"></a>Further Reading

* [Unix as IDE](https://sanctum.geek.nz/arabesque/series/unix-as-ide/)
* [command line Q&A](https://unix.stackexchange.com/questions/tagged/command-line?sort=votes&pageSize=15)
* [learn-anything - linux](https://learn-anything.xyz/operating-systems/unix/linux)
* [awesome linux resources](https://github.com/itech001/awesome-linux-resources)
* [awesome shell resources](https://github.com/alebcay/awesome-shell) and [awesome bash](https://github.com/awesome-lists/awesome-bash)
* [bash hackers wiki](http://wiki.bash-hackers.org/start)
* [stronger shell](https://m.odul.us/blog/2015/8/12/stronger-shell) - learnings from Matt Bowen and list of resources
* [bash env variables](http://www.tricksofthetrades.net/2015/06/14/notes-bash-env-variables/)
* Application lists - for audio, video, graphics & design, development, games etc
    * [arch wiki](https://wiki.archlinux.org/index.php/List_of_applications)
    * [alternativeto](https://alternativeto.net/)
    * [GNU packages](https://www.gnu.org/manual/manual.html)
    * [youtube-dl](https://github.com/rg3/youtube-dl/)
    * [qutebrowser](https://qutebrowser.org/)
* Linux on Windows
    * [git-bash](https://gitforwindows.org/)
    * [cygwin](https://www.cygwin.com/)
    * [Linux Subsystem for Windows by Microsoft](https://en.wikipedia.org/wiki/Windows_Subsystem_for_Linux)

<br>

# <a name="forums"></a>Forums

Read instructions provided by respective forums before asking a question. Try solving it yourself before asking - searching online, manual, ask a colleague, etc. 

* [unix stackexchange](https://unix.stackexchange.com/)
* [commandline](https://www.reddit.com/r/commandline)
* [bash](https://www.reddit.com/r/bash)
* [linux4noobs](https://www.reddit.com/r/linux4noobs)
* [linuxquestions](https://www.reddit.com/r/linuxquestions)
* [linux](https://www.reddit.com/r/linux) - general linux discussion
* [askubuntu](https://askubuntu.com/questions/tagged/command-line?sort=votes&pageSize=15) - ubuntu specific as well as general linux topics
