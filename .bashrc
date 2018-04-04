# .bashrc


# Find global definitions
if [ -f /etc/bashrc ]; then
	      . /etc/bashrc
fi


# User defined aliases

alias ls='ls -hpG'         # Default List
alias la='ls -alhpG'       # Show hidden files

alias xx='exa -alhHU --color=auto --git --group-directories-first'
                           # Deafult EXA preferences
alias xt='exa -T'          # Use EXA to show directory tree
alias xs='exa --sort size' # Sort EXA by file size

alias mkdir='mkdir -pv'    # Creates immediate directories as required

# alias rm='rm -i'         # Ask before deleting
alias cp='cp -i'           # Ask before copying
alias mv='mv -i'           # Ask before moving

alias c='clear'
alias home='cd $HOME'

# use config for version controlled dot files
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'



# User defined functions

function search() {
  # easier way to find files
  find $HOME -type f -iname '*'"$*"'*' -ls ;
}

function cs() {
  # cd into directory and then immediately ls
  cd $1 && ls
}

function quit() {
  # quit an application matching the name
  osascript -e 'quit app "'$1'"'
  printf 'quit '$1'\n'

}
