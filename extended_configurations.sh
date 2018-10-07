#!/bin/sh

source ~/dotfiles/private/platform

echo "==> Further Homebrew Installations"
sh ~/dotfiles/brew.sh

echo "==> Configuring Sublime-Text 3 on ${platform}"
sh ~/dotfiles/setup/${platform}/sublime/sublime_setup.sh