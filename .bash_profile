# .bash_profile


# import aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc 
fi


# rainbow greeting
if [[ $(gem list | grep lolcat | cut -c-6) = *lolcat* ]]; then
	if [[ $USER = zach ]]; then
		echo Hello, Zach! | lolcat
	else
		echo Hello, $USER | lolcat
	fi
else
	printf 'Consider running `gem install lolcat` for a fun welcome message\n'
fi


# Customize PATH
PATH=$HOME/bin:$HOME/.composer/vendor/bin:$HOME/.cargo/bin:$PATH
export PATH


# Customize CD PATH
CDPATH=:$HOME/Dev:$HOME/Sites:$HOME/Dev/ofx_v0.9.8/apps/myApps
export CDPATH


# Customize Prompt
PS1="\n\[\e[0;90m\][\t] \[\e[0;0m\]\w \[\e[0;36m\]$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)% \n\[\e[0;32m\]→ \[\e[0m\]"
export PS1
