# .bash_profile


# import aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc 
fi

#echo 'Welcome,' $(whoami)

# rainbow greeting
# if [[ $(gem list | grep lolcat | cut -c-6) = *lolcat* ]]; then
# if [[ $USER = zach ]]; then
#		echo Hello, Zach! | lolcat
#	else
#		echo Hello, $USER | lolcat
#	fi
# else
#	 printf 'Consider running `gem install lolcat` for a fun welcome message\n'
# fi


# Customize PATH
PATH=$HOME/bin:$HOME/.composer/vendor/bin:$HOME/.cargo/bin:$PATH:$HOME/.gem/ruby/2.3.0/bin
export PATH


# Customize CD PATH
CDPATH=:$HOME/Code:$HOME/Sites:$HOME/Code/ofx/apps/myApps
export CDPATH


# Customize Prompt
#PS1="\n\[\e[0;90m\][\t] \[\e[0;0m\]\w \[\e[0;36m\]$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)% \n\[\e[0;32m\]→ \[\e[0m\]"
PS1="\[\e[0;90m\][\t] \[\e[0;0m\]\w \n\[\e[0m\]› "
export PS1
