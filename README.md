# Custom Terminal Prompt with Git
#### Above code inserts git status and branch information with custom colors for your existing terminal. The *prompt_git()* function is used to enable git information on your working directory. Feel free to remove it and related inserts if you want.
* Open **.bashrc** file in your favorite editor. (Try: `gedit ~/.bashrc`)
* Add the above code to the end of your **.bashrc** file. Save the file and exit.
* Run `source ~/.bashrc` in terminal to see changes.

#### Special Characters:

* `\h` : hostname up to the first .
* `\H` : the hostname
* `\n` : newline
* `\s` : name of the shell
* `\t` : the current time in 24-hour HH:MM:SS format
* `\T` : the current time in 12-hour HH:MM:SS format
* `\u` : username of current user
* `\w` : name of current working directory
* `\W` : basename/path of current working directory
* `\a` : an ASCII bell character (07)
* `\d` : the  date  in "Weekday Month Date" format (e.g., "Tue May 26")
* `\e` : an ASCII escape character (033)
* `\j` : the number of jobs currently managed by the shell
* `\l` : the basename of the shell's terminal device name
* `\n` : newline
* `\r` : carriage return
* `\s` : the  name  of  the shell, the basename of $0 (the portion following the final slash)
* `\@` : the current time in 12-hour am/pm format
* `\A` : the current time in 24-hour HH:MM format
* `\v` : the version of bash (e.g., 2.00)
* `\V` : the release of bash, version + patch level (e.g., 2.00.0)
* `\!` : the history number of this command
* `\#` : the command number of this command
* `\$` : if the effective UID is 0, a #, otherwise a $
* `\[` : begin  a sequence of non-printing characters, which could be used to embed a terminal control sequence into the prompt
* `\]` : end a sequence of non-printing characters
