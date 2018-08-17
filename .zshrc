export ZSH=$HOME/.oh-my-zsh

#JAVA_HOME
export JAVA_HOME="/usr/lib/jvm/java-1.8.0-openjdk-amd64"
export ANDROID_HOME="~/Android/Sdk"
export PATH=~/Android/Sdk/tools:~/Android/Sdk/platform-tools:$PATH

ZSH_THEME="agnoster"

export NVM_DIR="/home/juancarlos/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export TERM=xterm-256color
source $ZSH/oh-my-zsh.sh

source ~/.aliases

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
