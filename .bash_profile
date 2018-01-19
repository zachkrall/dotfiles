# .bash_profile

# get aliases and functions
if [ -f ~/.bashrc ]; then
	      . ~/.bashrc 
fi

# add bin directory for current user
PATH=$HOME/bin:$HOME/.composer/vendor/bin:$HOME/.cargo/bin:$PATH
export PATH

PS1="\[\033[G\]\n\[\033[1;30m\][\t] \[\033[1;36m\]\w \[\033[1;30m\]⚡️ $(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)% \n\[\033[1;32m\]→ \[\033[0m\]"
export PS1

CDPATH=:$HOME/Dev:$HOME/Sites:$HOME/Dev/ofx_v0.9.8/apps/myApps
export CDPATH
