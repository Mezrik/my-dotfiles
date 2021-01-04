#!/usr/bin/env bash

## Original taken from https://github.com/zellwk/dotfiles/blob/master/mac/brew.sh

# Install Homebrew (if not installed)
echo "Installing Homebrew."

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# # Install and setup Mongodb
# brew tap mongodb/brew
# brew install mongodb-community
# sudo mkdir -p /System/Volumes/Data/data/db
# sudo chown -R `id -un` /System/Volumes/Data/data/db

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed` as gsed
brew install gnu-sed

# Install `wget` with IRI support.
brew install wget --with-iri

brew install grep
brew install node

# Install useful binaries.
brew install autojump
brew install git
brew install imagemagick --with-webp
brew install rsync
brew install ssh-copy-id
brew install tree
brew install vbindiff
brew install youtube-dl
brew install visual-studio-code

# Installs Casks
brew tap caskroom/cask

## Apps I use
brew cask install google-chrome #Chrome
brew cask install grammarly
brew cask install iterm2
brew cask install kap
brew cask install slack
brew cask install spotify
brew cask install tower

# Remove outdated versions from the cellar.
brew cleanup