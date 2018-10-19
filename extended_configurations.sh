#!/bin/sh

source ~/dotfiles/private/platform

DIR=$(dirname $0)
if [ "$DIR" = "." ]; then
	DIR=$(pwd)
fi

echo "==> Further Homebrew Installations"
echo $DIR
sh $DIR/brew.sh

echo "==> Configuring Sublime-Text 3 on ${PLATFORM}"
sh $DIR/setup/$PLATFORM/sublime/sublime_setup.sh

echo "==> Installing rvm"
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable --with-default-gems="bundler"

