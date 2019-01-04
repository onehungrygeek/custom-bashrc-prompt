# Custom `.bashrc` with Git status, quick weather, currency conversion and more.
![](https://user-images.githubusercontent.com/19870554/50668885-f82dc580-0f8f-11e9-95e2-f7ddef63c8a3.png)
* Open **.bashrc** file in your favorite editor. (Try: `gedit ~/.bashrc`)
* Add the above code to the end of your **.bashrc** file. Save the file and exit.
* Run `source ~/.bashrc` in terminal to see changes.
***
#### Special Characters for customizing bash prompt:

![](https://user-images.githubusercontent.com/19870554/50667767-ed236700-0f88-11e9-9f5a-cca2121646cf.png)

***
### Git status and branch info:
The prompt automatically shows the current git status and branch information with custom colors in the bash if it detects the current directory to be a git repository. Also, the icon status changes based on git status and branch name. The *prompt_git()* function is used to enable git information on your working directory. *(Feel free to remove it and related inserts if you want.)*

![](https://user-images.githubusercontent.com/19870554/50668252-dcc0bb80-0f8b-11e9-9940-1f3f82765857.png)


***
### External IP check:
You can check your external IP by executing the command `xip`.

![](https://user-images.githubusercontent.com/19870554/50669044-db45c200-0f90-11e9-8c23-95a625eb55b1.png)


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
