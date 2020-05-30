#!/bin/sh
#
# tmux

if [[ -e "$HOME/.tmux.conf" ]]; then
  printf "Found existing .tmux.conf in your \$HOME directory. Will create a backup at $HOME/.tmux.conf.bak\n"
  cp -f "$HOME/.tmux.conf" "$HOME/.tmux.conf.backup" 2>/dev/null || true
fi

printf "Creating symbolic link from \$(pwd)/tmux/tmux.con to $HOME/.tmux.conf \n"
ln -sf $(pwd)/tmux/tmux.conf "$HOME"/.tmux.conf;

# Set custom tmux configuration
tmux source-file ~/.tmux.conf

exit 0