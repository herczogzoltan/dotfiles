#!/bin/sh
#
# fzf

if test ! $(which fzf)
then
  echo "  Installing fzf for you."

  # Install homebrew if missing
  if test ! $(which brew)
  then
    echo "Homebrew missing, trying to install it."
    ./homebrew/install.sh
  fi
brew install fzf

fi

exit 0