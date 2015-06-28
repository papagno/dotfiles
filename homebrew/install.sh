#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install homebrew packages
brew install grc coreutils spark
brew install brew-cask python ack
brew install vim --override-system-vim
brew install tmux
brew install reattach-to-user-namespace

# Set zsh as login shell
chsh -s $(which zsh)

exit 0
