#
# .bashrc config
#

# Bash Prompt 
export PS1="\e[1m\e[94m\W \e[0m\e[1mλ:\e[0m "

# Default Editor
export EDITOR=nvim

# ALIASES

alias ..="cd .."
alias v=nvim
alias vim=nvim
alias bye="shutdown now"

## Color Aliases
alias ls='ls --color=auto --group-directories-first'
alias grep="grep --color=auto"

# Youtube-dl Aliases
alias yt="youtube-dl --add-metadata -ic" # Download video
alias yta="youtube-dl --add-metadata -xic" # Download only audio

# NVM Config
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
