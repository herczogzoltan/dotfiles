#!/bin/sh
#
# tmux

if test ! $(which tmux); then
  echo "  Installing tmux for you."

  # Install homebrew if missing
  if test ! $(which brew); then
    echo "Homebrew missing, trying to install it."
    ./homebrew/install.sh
  fi

fi

# install tmux via brew
brew install tmux

if [[ -e "$HOME/.tmux.conf" ]]; then
  printf "Found existing .tmux.conf in your \$HOME directory. Will create a backup at $HOME/.tmux.conf.bak\n"
  cp -f "$HOME/.tmux.conf" "$HOME/.tmux.conf.backup" 2>/dev/null || true
fi

ln -sf $(pwd)/tmux/tmux.conf "$HOME"/.tmux.conf;

# Set custom tmux configuration
tmux source-file ~/.tmux.conf

exit 0