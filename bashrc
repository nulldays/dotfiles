#
#
# .bashrc config
#
#

# Username Color
DEFAULT=$PS1
BOLD="\e[1m"
RESET="\e[0m"
BLUE="\e[94m"
PS1="${BOLD}${BLUE}\W ${RESET}${BOLD}λ:${RESET} "

# Default Editor
export EDITOR=nvim

# ARCHIVE EXTRACTION
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

### ALIASES ###

# Color Aliases
test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
alias ls='ls --color=auto --group-directories-first'
alias grep="grep --color=auto" # Color grep - highlight desired sequence.
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ccat="highlight --out-format=ansi" # Color cat - print file with syntax highlighting.

#  NVIM
alias vim=nvim
alias v=nvim

# Python
alias py="python3"

# Youtube Download
alias yt="youtube-dl -f best --add-metadata" # Download video
alias yta="yt -x -f bestaudio/best" # Download only audio

# NVM Config
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
[ -f "/home/laptop/.ghcup/env" ] && source "/home/laptop/.ghcup/env" # ghcup-env


export DENO_INSTALL="/home/laptop/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

alias bye="shutdown now"