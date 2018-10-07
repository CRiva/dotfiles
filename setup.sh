#!/bin/sh

DIR=$(dirname $0)
if [ "$DIR" = "." ]; then
	DIR=$(pwd)
fi

echo "=> Detecting OS"
platform="unknown"
case $(uname) in
	[Dd]arwin*)
		platform="mac"
		;;
	FreeBSD)
		platform="freebsd"
		;;
	Linux)
		if [ -f "/etc/lsb-release" ]; then
			platform="debian"
		fi
		if [ -f "/etc/os-release" ]; then
			platform="debian"
		fi
		;;
esac

if [ "unknown" = "${platform}" ]; then
	echo "\tERROR: Unknown platform"
	exit 1
fi
echo "--> ${platform}"
echo "PLATFORM=${platform}" > $DIR/private/platform

echo "=> Linking dotfiles"
cd ~ || exit 1

sh $DIR/setup/links.sh
sh $DIR/setup/${platform}/links.sh

echo "=> Configuring ${platform} specific system settings"
sh $DIR/setup/${platform}/system_settings.sh

echo "==> Configuring Sublime-Text 3 on ${platform}"
sh $DIR/setup/${platform}/sublime/sublime_setup.sh

echo "=> Complete!"