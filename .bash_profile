# Tell ls to be colourful
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad
 
# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

export TERM="xterm-color"
PS1='\[\e[0;33m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ '

############
# ALIASES ##
############

alias pj="cd ~/Projects/"

# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# added by Anaconda3 4.1.1 installer
export PATH="/Users/tuvttran/anaconda/bin:$PATH"
