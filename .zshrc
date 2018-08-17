export ZSH=$HOME/.oh-my-zsh
export TERM=xterm-256color

ZSH_THEME="agnoster"

export NVM_DIR="/home/juancarlos/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

source ~/.aliases

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
