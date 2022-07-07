# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

zstyle ':omz:update' frequency 13
DISABLE_LS_COLORS="true"
DISABLE_AUTO_TITLE="true"

# Standard plugins can be found in $ZSH/plugins/
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User Config
export EDITOR=nvim
alias ..="cd .."

# NVM Config
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# GO config
export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin

# pnpm
export PNPM_HOME="/home/user/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end