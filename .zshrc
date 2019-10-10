# Path to your oh-my-zsh installation.
export ZSH="/Users/bstarcheus/.oh-my-zsh"

# Set name of the theme to load
ZSH_THEME="spaceship"

# Enable auto-correction
#ENABLE_CORRECTION="true"

# Disable marking untracked files as dirty
#DISABLE_UNTRACKED_FILES_DIRTY="true"

# History timestamp
HIST_STAMPS="mm/dd/yyyy"

plugins=(git zsh-autosuggestions)

#Spaceship Settings

SPACESHIP_PROMPT_ORDER=(
	user
	dir
	host
	git
	package
	node
	jobs
	exit_code
	char
)

SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL=❯

#Regular colors
SPACESHIP_DIR_COLOR=033
SPACESHIP_GIT_BRANCH_COLOR=202
SPACESHIP_GIT_STATUS_COLOR=196

#Halloween colors
#SPACESHIP_DIR_COLOR=202
#SPACESHIP_GIT_BRANCH_COLOR=226
#SPACESHIP_GIT_STATUS_COLOR=093
#SPACESHIP_CHAR_COLOR_SUCCESS=246
#SPACESHIP_CHAR_COLOR_FAILURE=202

#Christmas colors
#SPACESHIP_DIR_COLOR=196
#SPACESHIP_GIT_BRANCH_COLOR=034
#SPACESHIP_GIT_STATUS_COLOR=196
#SPACESHIP_CHAR_COLOR_SUCCESS=034
#SPACESHIP_CHAR_COLOR_FAILURE=196

source $ZSH/oh-my-zsh.sh
source $HOME/.zsh_exports
