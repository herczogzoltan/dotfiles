export LSCOLORS="exfxcxdxbxegedabagacad"
export CLICOLOR=true

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

setopt PROMPT_SUBST

HISTTIMEFORMAT="%F %T "

PATH=$PATH:$HOME/bin

# Add Python 3 libraries
PATH=$PATH:$HOME/Library/Python/3.7/bin
