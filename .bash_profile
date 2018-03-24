# .bash_profile

# rainbow greeting :)
# first check if lolcat is installed
if [[ $(gem list | grep lolcat | cut -c-6) = *lolcat* ]];then

	echo Hello, $USER | lolcat

else

	printf 'Consider running `gem install lolcat` for a fun welcome message\n'

fi


# get aliases and functions
if [ -f ~/.bashrc ]; then
	      . ~/.bashrc 
fi

# add bin directory for current user
PATH=$HOME/bin:$HOME/.composer/vendor/bin:$HOME/.cargo/bin:$PATH
export PATH

PS1="\n\[\e[0;30m\][\t] \[\e[0;36m\]\w ⚡️ \[\e[0;30m\]$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)% \n\[\e[0;32m\]→ \[\e[0m\]"
export PS1

CDPATH=:$HOME/Dev:$HOME/Sites:$HOME/Dev/ofx_v0.9.8/apps/myApps
export CDPATH
