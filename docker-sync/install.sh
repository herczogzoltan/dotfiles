#!/bin/sh
#
# docker-sync

if test ! $(which docker-sync); then
  echo "  Installing docker-sync for you."

  # Install homebrew if missing
  if test ! $(which brew); then
    echo "Homebrew missing, trying to install it."
    ./homebrew/install.sh
  fi

fi

# install docker-sync
if which ruby >/dev/null && which gem >/dev/null; then
  gem install --user-install docker-sync
  exit 0
fi

exit 1