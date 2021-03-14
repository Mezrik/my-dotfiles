#!/usr/bin/env bash

## Original taken from https://github.com/zellwk/dotfiles/blob/master/mac/setup.sh

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install apps and binaries with Brew
source mac/brew.sh

# Installs oh my zsh
source install-zsh.sh

# Set npm permissions and install global binaries
source mac/npm.sh

# Create symlinks for dotfiles
source link-dotfiles.sh

# Configure MacOS defaults.
# You only want to run this once during setup. Additional runs may reset changes you make manually.
source ./mac/macos