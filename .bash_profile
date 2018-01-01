# .bash_profile

# get aliases and functions
if [ -f ~/.bashrc ]; then
	      . ~/.bashrc 
fi

# add bin directory for current user
PATH=$PATH:$HOME/bin:$HOME/.composer/vendor/bin
export PATH

# customized prompt 
PS1="\[\e[37m\]\u \[\e[34m\]\w\[\e[37m\] → \[\e[m\]"
export PS1

export PATH="$HOME/.cargo/bin:$PATH"
