# Custom `.bashrc` with Git status, quick weather, and more.
* Open **.bashrc** file in your favorite editor. (Try: `gedit ~/.bashrc`)
* Add the above code to the end of your **.bashrc** file. Save the file and exit.
* Run `source ~/.bashrc` in terminal to see changes.
***
#### Special Characters for customizing bash prompt:

![](https://user-images.githubusercontent.com/19870554/50667767-ed236700-0f88-11e9-9f5a-cca2121646cf.png)

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
***
### Git status and branch info:
#### The prompt automatically shows the current git status and branch information with custom colors in the bash if it detects the current directory to be a git repository. The *prompt_git()* function is used to enable git information on your working directory. (Feel free to remove it and related inserts if you want.)
***
### External IP check:
#### You can check your external IP by executing the command `xip`.
***
### Directory creation:
#### You can quickly create a directory and also jump into that created directory at the same time using the command `mkcdir <directory_name>` instead of the standard `mkdir <directory_name>`.
***
### Weather info:
#### You can check weather for your current city by executing the command `weather`.
##### (Credits to [Igor Chubin's wttr.in](https://github.com/chubin/wttr.in "GitHub Page for wttr.in"))
##### Customize the 'weather' alias in above **.bashrc** with the help of options below:
##### Usage:
    $ curl wttr.in          # current location
    $ curl wttr.in/muc      # weather in the Munich airport

##### Supported location types:
    /paris                  # city name
    /~Eiffel+tower          # any location
    /Москва                 # Unicode name of any location in any language
    /muc                    # airport code (3 letters)
    /@stackoverflow.com     # domain name
    /94107                  # area codes
    /-78.46,106.79          # GPS coordinates

##### Special locations:
    /moon                   # Moon phase (add ,+US or ,+France for these cities)
    /moon@2016-10-25        # Moon phase for the date (@2016-10-25)

##### Units:
    ?m                      # metric (SI) (used by default everywhere except US)
    ?u                      # USCS (used by default in US)
    ?M                      # show wind speed in m/s

##### View options:
    ?0                      # only current weather
    ?1                      # current weather + 1 day
    ?2                      # current weather + 2 days
    ?n                      # narrow version (only day and night)
    ?q                      # quiet version (no "Weather report" text)
    ?Q                      # superquiet version (no "Weather report", no city name)
    ?T                      # switch terminal sequences off (no colors)

##### PNG options:
    /paris.png              # generate a PNG file
    ?p                      # add frame around the output
    ?t                      # transparency 150
    transparency=...        # transparency from 0 to 255 (255 = not transparent)

##### Options can be combined:
    /Paris?0pq
    /Paris?0pq&lang=fr
    /Paris_0pq.png          # in PNG the file mode are specified after _
    /Rome_0pq_lang=it.png   # long options are separated with underscore

##### Localization:
    $ curl fr.wttr.in/Paris
    $ curl wttr.in/paris?lang=fr
    $ curl -H "Accept-Language: fr" wttr.in/paris

##### Supported languages:
    da de fr fa id it nb nl pl ru (supported)
    az be bg bs ca cy cs el eo es et fi hi hr hu hy is ja jv ka kk ko ky lt lv mk ml nl nn pt ro sk sl sr sr-lat sv sw th tr te uk uz vi zh zu he (in progress)

##### Special URLs:
    /:help                  # show this page
    /:bash.function         # show recommended bash function wttr()
    /:translation           # show the information about the translators
