# Custom Terminal Prompt with Git
#### Above code inserts git status and branch information with custom colors for your existing terminal. The *prompt_git()* function is used to enable git information on your working directory. Feel free to remove it and related inserts if you want.
* Open **.bashrc** file in your favorite editor. (Try: `gedit ~/.bashrc`)
* Add the above code to the end of your **.bashrc** file. Save the file and exit.
* Run `source ~/.bashrc` in terminal to see changes.

#### Special Characters:

* `\h` : hostname up to the first .
* `\n` : newline
* `\s` : name of the shell
* `\t` : current time in 24-hour format
* `\u` : username of current user
* `\w` : name of current working directory
* `\W` : basename/path of current working directory
