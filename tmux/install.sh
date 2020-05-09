#!/bin/sh
#
# tmux

if test ! $(which tmux)
then
  echo "  Installing tmux for you."

  # Install homebrew if missing
  if test ! $(which brew)
  then
    echo "Homebrew missing, trying to install it."
    ./homebrew/install.sh
  fi
brew install tmux

fi

exit 0