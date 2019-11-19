# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# --- my path ---
PATH=/usr/local/bin:$HOME/bin:$PATH
PATH=$PATH:$HOME/.cargo/bin
PATH=$PATH:$HOME/.gem/ruby/2.3.0/bin
export PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/zach/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="nox"
#ZSH_THEME="evan"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
# User defined aliases

alias ls='ls -p'         # Default List
alias ll='ls -lp'          # Long List
alias la='ls -alhpG'       # Show hidden files

alias xx='exa -alhHU --color=auto --git --group-directories-first'
                           # Deafult EXA preferences
alias xt='exa -T -L 2'          # Use EXA to show directory tree
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

alias lt="toilet"


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
	open $1 -a "atom.app"
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
