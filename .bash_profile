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
PATH=/usr/local/bin:$HOME/bin:$HOME/.composer/vendor/bin:$HOME/.cargo/bin:$PATH:$HOME/.gem/ruby/2.3.0/bin
export PATH

# Customize CD PATH
CDPATH=:$HOME/Code:$HOME/Sites:$HOME/Code/ofx/apps/myApps
export CDPATH

# Customize Prompt
#PS1="\n\[\e[0;90m\][\t] \[\e[0;0m\]\w \[\e[0;36m\]$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)% \n\[\e[0;32m\]→ \[\e[0m\]"

export PRIDECHAR="❙"
export PRIDE="\033[38;5;196;m$PRIDECHAR\033[38;5;202;m$PRIDECHAR\033[38;5;11;m$PRIDECHAR\033[38;5;34;m$PRIDECHAR\033[38;5;27;m$PRIDECHAR\033[38;5;63;m$PRIDECHAR"

#PS1="\[\e[0;90m\][\t] \[\e[0;0m\]\w \n\[\e[0m\]› "
PS1="$PRIDE \[\e[0;0m\]\w \n\[\e[0m\]› "
export PS1

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"

export PATH="$HOME/.cargo/bin:$PATH"

export VULKAN_SDK="$HOME/.vulkan_sdk/macOS"

export PATH="$VULKAN_SDK/bin:$PATH"

export DYLD_LIBRARY_PATH="$VULKAN_SDK/lib:$DYLD_LIBRARY_PATH"

export VK_ICD_FILENAMES="$VULKAN_SDK/etc/vulkan/icd.d/MoltenVK_icd.json"

export VK_LAYER_PATH="$VULKAN_SDK/etc/vulkan/explicit_layer.d"

export SHADERC_LIB_DIR="$VULKAN_SDK/lib"
