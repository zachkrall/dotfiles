# .bashrc


# Find global definitions
if [ -f /etc/bashrc ]; then
	      . /etc/bashrc
fi


# User defined aliases

alias ls='ls -hpG'         # Default List
alias ll='ls -lp'          # Long List
alias la='ls -alhpG'       # Show hidden files

alias xx='exa -alhHU --color=auto --git --group-directories-first'
                           # Deafult EXA preferences
alias xt='exa -T'          # Use EXA to show directory tree
alias xl='exa -al'         # Use EXA to list files one line each
alias xs='exa --sort size' # Sort EXA by file size

alias mkdir='mkdir -pv'    # Creates immediate directories as required

# C++ Development
alias runrun='make RunRelease'

# alias rm='rm -i'         # Ask before deleting
alias cp='cp -i'           # Ask before copying
alias mv='mv -i'           # Ask before moving

alias c='clear'
alias home='cd $HOME'

alias ofx='cd /Users/zach/Code/openFrameworks/kralz920_ofDT_2018 && ls'

# alias http='http-server -c-1'

alias music='open -a iTunes.app'


# use config for version controlled dot files
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'



# User defined functions
function rainbow(){
	echo $1 | lolcat
}

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

function http() {
	open http://localhost:8080
	http-server -c-1 $1
}

function livehttp() {
	if [ $1 ]
	then
		printf "browser-sync start --server $1 --files $1\n"
		browser-sync start --server $1 --files $1
	else
		browser-sync start --server -f .
	fi
}

function fastpush() {
	git add .
	git commit -am $1
	git push origin master
}

function edit() {
	# open file in atom
	open $1 -a atom.app
}

function opentidal () {
	open -a supercollider.app
	open $HOME/Code/tidal/code -a atom.app
}

function photorec() {
	$HOME/testdisk-7.0/photorec
}
function testdisk(){
	$HOME/testdisk-7.0/testdisk
}

function quicksay (){
	say $1 -o $1.aiff
}

function toiletfonts(){
	for i in $(ls /usr/local/Cellar/toilet/0.3/share/figlet); do toilet --font ${i/.tlf} ${i/.tlf}; done
}
