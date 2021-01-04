#!/bin/bash 

## Original taken from https://github.com/zellwk/dotfiles/blob/master/link-startup-scripts.sh

# IMPORTANT: Change martinpetr to your profile name
STARTUP="/mnt/c/Users/martinpetr/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup"

echo "Creating hardlinks to startup directory"
for file in windows/startup-scripts/*; do 
  ln -fv "$file" "$STARTUP"
done