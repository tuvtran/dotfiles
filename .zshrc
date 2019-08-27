# Path to your oh-my-zsh installation.
export ZSH=/Users/tuvttran/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="simple"
DEFAULT_USER=`whoami`

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  vi-mode
)

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.


############################### PERSONAL ALIAS #######################################
alias zshconf="vim ~/.zshrc"
# alias omz="cd ~/.oh-my-zsh"
# alias pj="cd ~/DEV"
# alias speed-up="sudo rm /var/log/asl/*.asl"
# alias cpp="g++ -pipe -O2 -std=c++14"
# alias cleands="find . -name '.DS_Store' -type f -delete"
# alias fastboot="/Users/tuvttran/Library/Android/sdk/fastboot"
# alias adb="/Users/tuvttran/Library/Android/sdk/adb"
# alias vim="nvim"
# alias ranger='ranger --choosedir=$HOME/rangerdir; LASTDIR=`cat $HOME/rangerdir`; cd "$LASTDIR"'
# alias postgres-start="postgres -D /usr/local/var/postgres" # for Mac
# alias loadz="source ~/.zshrc"
# Speed up vim with MacVim precompiled binaries
# alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
######################################################################################

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


################################ USER CONFIGURATIONS ################################

# Vim SuperMan
vman() {
  vim -c "SuperMan $*"

  if [ "$?" != "0"  ]; then
    echo "No manual entry for $*"
  fi
}

# Use Vim as default editor
export EDITOR="vim"

# PATH Configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin"

############################ TOOLS AND LANGUAGUES SETTINGS ############################
# PYENV Configuration
# export PATH="$(pyenv root)/shims:$PATH"
######################################################################

# PIPSI Configuration
# export PATH="$HOME/.local/bin:$PATH"
######################################################################

# Load RVM into a shell session *as a function*
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
# export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
######################################################################

# go path
# export GOPATH="$HOME/DEV/gocode"
# export PATH="$PATH:/opt/X11/bin:$GOPATH/bin"
######################################################################

# Anaconda path in bin
# export PATH=$PATH:$HOME/anaconda3/bin
######################################################################

# Rust cargo path
# export PATH=$PATH:$HOME/.cargo/bin
######################################################################

# yarn global binaries path
# export PATH=$PATH:`yarn global bin`:$HOME/.config/yarn/global/node_modules/.bin
######################################################################

# SML bin
# export PATH=$PATH:/usr/local/smlnj/bin
######################################################################

# Latex on Mac
# export PATH=$PATH:/Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin
######################################################################

# PHP Composer on Mac
# export PATH=$PATH:$HOME/.composer/vendor/bin
######################################################################

# virtualenvwrapper setup
# export WORKON_HOME=$HOME/.virtualenvs
# source /usr/local/bin/virtualenvwrapper.sh
######################################################################

# Config NVM
# export NVM_DIR="$HOME/.nvm"
#. "/usr/local/opt/nvm/nvm.sh"
######################################################################

# jenv stuff
# export PATH="$HOME/.jenv/bin:$PATH"
# eval "$(jenv init -)"
######################################################################

# ZSH syntax highlighting
# export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters
# source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source ~/.zshrc

# History substring search
source ~/.oh-my-zsh/plugins/history-substring-search/history-substring-search.zsh

# bind key for history-substring-search
bindkey '^P' history-substring-search-up
bindkey '^N' history-substring-search-down
