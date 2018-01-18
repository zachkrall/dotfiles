# .bash_profile

# get aliases and functions
if [ -f ~/.bashrc ]; then
	      . ~/.bashrc 
fi

# add bin directory for current user
PATH=$HOME/bin:$HOME/.composer/vendor/bin:$HOME/.cargo/bin:$PATH
export PATH

PS1="\[\033[G\]\n\t in \w ⚡️ $(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)% \n\[\033[1;32m\]→ \[\033[0m\]"
export PS1