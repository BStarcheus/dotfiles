# Set PATH for Python 3.7
export PATH="/usr/local/opt/python/libexec/bin:${PATH}"

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
#SPACESHIP_GIT_BRANCH_COLOR=028
#SPACESHIP_GIT_STATUS_COLOR=196
#SPACESHIP_CHAR_COLOR_SUCCESS=028
#SPACESHIP_CHAR_COLOR_FAILURE=196

source $ZSH/oh-my-zsh.sh



# Exports

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi


# Lazy load nvm npm node
nvm() {
    unset -f nvm npm node
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
    nvm "$@"
}
node() {
    unset -f nvm npm node
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
    node "$@"
}
npm() {
    unset -f nvm npm node
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
    npm "$@"
}

# tabtab source for serverless, sls, slss  packages
# uninstall by removing these lines or running `tabtab uninstall [ serverless, sls, slss ]`
[[ -f /Users/bstarcheus/.nvm/versions/node/v12.11.1/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/bstarcheus/.nvm/versions/node/v12.11.1/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh

[[ -f /Users/bstarcheus/.nvm/versions/node/v12.11.1/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/bstarcheus/.nvm/versions/node/v12.11.1/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

[[ -f /Users/bstarcheus/.nvm/versions/node/v12.11.1/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/bstarcheus/.nvm/versions/node/v12.11.1/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh
