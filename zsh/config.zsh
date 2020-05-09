export LSCOLORS="exfxcxdxbxegedabagacad"
export CLICOLOR=true

setopt PROMPT_SUBST

HISTTIMEFORMAT="%F %T "

PATH=$PATH:$HOME/bin

# Add Python 3 libraries
PATH=$PATH:$HOME/Library/Python/3.7/bin

# Do not send analytics data to Homebrew - https://docs.brew.sh/Analytics
export HOMEBREW_NO_ANALYTICS=1
