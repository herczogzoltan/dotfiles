#!/bin/sh
#
# fping

if test ! $(which fping)
then
  echo "  Installing Homebrew for you."

  # Install homebrew if missing
  if test ! $(which brew)
  then
    echo "Homebrew missing, trying to install it."
    ./homebrew/install.sh
  fi
brew install fping

fi

exit 0