# .bashrc


# source global definitions
if [ -f /etc/bashrc ]; then
	      . /etc/bashrc
fi



# user specific aliases

alias ls='ls -hpG'            # Default List
alias ll='exa -T'            # Use EXA to show directory tree
alias la='ls -alhpG'          # Show hidden files

alias exa='exa -alhHU --color=auto --git --group-directories-first'
alias xs='exa --sort size'

alias mkdir='mkdir -p'        # Easier mkdir

# alias rm='rm -i'              # Ask before deleting
alias cp='cp -i'              # Ask before copying
alias mv='mv -i'              # Ask before moving



# Find a file with a pattern in name:

function ff() { 
    find $HOME -type f -iname '*'"$*"'*' -ls ;
}

# ls after changing into directory

function cs() {
  cd $1
	ls
}

function quit() {

  osascript -e 'quit app "'$1'"'
  printf 'quit '$1'\n'

}
alias config='/usr/bin/git --git-dir=/Users/zachkrall/.dotfiles/ --work-tree=/Users/zachkrall'
