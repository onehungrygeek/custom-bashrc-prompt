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
