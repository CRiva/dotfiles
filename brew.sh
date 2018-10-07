#!/bin/sh
#
# https://github.com/mathiasbynens/dotfiles/blob/master/brew.sh
#
# other brew helpfulness

echo "==> Install GNU `sed`, overwriting the built-in `sed`."
brew install gnu-sed --with-default-names

echo "==> Install imagemagick."
brew install imagemagick --with-webp

BREW_PREFIX=$(brew --prefix)

echo "==> Switch to using brew-installed bash as default shell"
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;

brew cleanup