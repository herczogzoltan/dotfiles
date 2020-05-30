
#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.
# Credits to @holman - https://github.com/holman/dotfiles/blob/master/homebrew/install.sh

set -e

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."

  # Install the correct homebrew for each OS type
  if test "$(uname)" = "Darwin"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
  fi

fi

printf "Would you like to install the packages described in the Brewfile? \n"
read action < /dev/tty
if [[ "$action" == Y* ]] || [[ "$action" == y* ]] || [ -z "$action" ]; then
  echo "Attempting to install dependencies\n"
  brew bundle
fi


exit 0