prompt_git() {
	local s='';
	local branchName='';

	# Check if the current directory is in a Git repository.
	if [ $(git rev-parse --is-inside-work-tree &>/dev/null; echo "${?}") == '0' ]; then

		# check if the current directory is in .git before running git checks
		if [ "$(git rev-parse --is-inside-git-dir 2> /dev/null)" == 'false' ]; then

			# Ensure the index is up to date.
			git update-index --really-refresh -q &>/dev/null;

			# Check for uncommitted changes in the index.
			if ! $(git diff --quiet --ignore-submodules --cached); then
				s+='+';
			fi;

			# Check for unstaged changes.
			if ! $(git diff-files --quiet --ignore-submodules --); then
				s+='!';
			fi;

			# Check for untracked files.
			if [ -n "$(git ls-files --others --exclude-standard)" ]; then
				s+='?';
			fi;

			# Check for stashed files.
			if $(git rev-parse --verify refs/stash &>/dev/null); then
				s+='$';
			fi;

		fi;

		# Get the short symbolic ref.
		# If HEAD isn’t a symbolic ref, get the short SHA for the latest commit
		# Otherwise, just give up.
		branchName="$(git symbolic-ref --quiet --short HEAD 2> /dev/null || \
			git rev-parse --short HEAD 2> /dev/null || \
			echo '(unknown)')";

		[ -n "${s}" ] && s=" [${s}]";

		echo -e "${1}${branchName}${2}${s}";
	else
		return;
	fi;
}


usernamecolor=$(tput setaf 35);
locationcolor=$(tput setaf 33);
workingdirectorycolor=$(tput setaf 35);
white=$(tput setaf 15);
gitstatuscolor=$(tput setaf 220);
bold=$(tput bold);
reset=$(tput sgr0);

PS1="\[\033]0;\w\007\]"; # Displays current working directory as title of the terminal
PS1+="\[${bold}\]\n(\d) \T\n";
PS1+="\[${usernamecolor}\]\u"; # Displays username
PS1+="\[${white}\] at ";
PS1+="\[${locationcolor}\]\h"; # Displays host/device
PS1+="\[${white}\] in ";
PS1+="\[${workingdirectorycolor}\]\w"; # Displays base path of current working directory
PS1+="\$(prompt_git \"\[${white}\] on \[${gitstatuscolor}\]\" \"\[${gitstatuscolor}\]\")"; # Displays git status
PS1+="\n";
PS1+="\[${white}\]\$ \[${reset}\]";
export PS1;

# Quickly find out external IP address for your device by typing 'xip'
alias xip='curl ipinfo.io'

# Quickly check weather for your city right inside the terminal by typing 'weather'
# Remove '1' from the url for a full weather display. Remove 'm' from the url for Fahrenheit instead of Celsius
alias weather='curl wttr.in/?0mq'

# Make a directory and jump right into it. Combination of mkdir and cd. Just use 'mkcdir folder_name'
mkcdir()
{
	mkdir -p -- "$1" &&
		cd -P -- "$1"
}

# Update, upgrade and clean apt packages in your system with just one command. Just type 'update' in terminal
update () {
	echo -e "\nStarting system update..."
	echo -e "\nUpdating list of available apt packages and their versions..."
	sudo apt update -qq
	echo -e "\nUpgrading apt packages to newer version..."
	sudo apt upgrade -yy
	echo -e "\nRemoving packages no more needed as dependencies..."
	sudo apt autoremove -yy
	echo -e "\nRemoving packages that can no longer be downloaded..."
	sudo apt autoclean
	echo -e "\nClearing out local repository of retrieved package files..."
	sudo apt clean
	echo -e "\nUpdate complete!"
}

weather
