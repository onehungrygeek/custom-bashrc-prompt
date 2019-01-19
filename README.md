# Custom *.bashrc* with Git status, current tech news, random quote, current weather, live currency conversion, and more.
[![My System](https://img.shields.io/badge/My%20System-Ubuntu%2018.10-blue.svg)](https://www.ubuntu.com/#download)
![](https://user-images.githubusercontent.com/19870554/51409983-4c5cac00-1b31-11e9-99be-f3dd143e6acb.png)
* Open **.bashrc** file in your favorite editor. (Try: `gedit ~/.bashrc`)
* Add the above code to the end of your **.bashrc** file. Save the file and exit.
* Run `source ~/.bashrc` in terminal to see changes.

#### ***Requirements for currency conversion and quote fetch:***
Download and install `jq` by visiting [this link](https://stedolan.github.io/jq/) or simply type the command below in your bash:
```sh
sudo snap install jq
```


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

![](https://user-images.githubusercontent.com/19870554/51094030-43f22300-1777-11e9-8428-ceeb11430087.png)


***
### News:
(Credits to [Alvin Lin's getnews.tech](https://github.com/omgimanerd/getnews.tech "GitHub Page for getnews.tech"))

You can get the latest news from various different sources by simply typing `news`.
My favorite default list of sources is **google-news, hacker-news, mashable, polygon, techcrunch, techradar, the-next-webt, the-verge, and wired-de**. Find other sources by typing `curl getnews.tech/sources`

*Below screenshot is a short example. The script by default displays `20` articles from all the above listed favorite news sources. Feel free to change it in the `.bashrc` under `news` function*

![](https://user-images.githubusercontent.com/19870554/51421028-77adbe00-1b66-11e9-805f-8350d9e2a245.png)


***
### Random quote
You can view a random quote by typing the command `quote`.

![](https://user-images.githubusercontent.com/19870554/51409549-208cf680-1b30-11e9-9003-9ed52347670c.png)


***
### Currency conversion:
You can quickly check what the live currency conversion rate is for any currency. **This API converts from US Dollars (USD). The default is set to INR (Indian Ruppees).**

*Note: Please check the .bashrc and replace the `INR` with your favorite currency code*

Use cases (check image below):
* Check currency conversion from USD to favorite currency (Default: INR)
* Convert certain amount from USD to favorite currency(Default: INR)
* Convert certain amount from USD to any other currency

![](https://user-images.githubusercontent.com/19870554/50669678-991e7f80-0f94-11e9-8218-afb94a19b060.png)


***
### Weather info:
(Credits to [Igor Chubin's wttr.in](https://github.com/chubin/wttr.in "GitHub Page for wttr.in"))

You can check weather for your current city by executing the command `weather`. You can also check current weather for any other city by typing `weather "CityNameHere"` like `weather "San Jose"`

![](https://user-images.githubusercontent.com/19870554/51421267-fbb57500-1b69-11e9-8060-3682603f91dc.png)


***
### Directory creation and direct `cd`:
You can quickly create a directory and also jump into that created directory at the same time using the command `mkcdir <directory_name>` instead of the standard `mkdir <directory_name>`.

![](https://user-images.githubusercontent.com/19870554/50669103-40011c80-0f91-11e9-9deb-98e5f8118775.png)