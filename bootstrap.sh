#!/bin/sh
#
# This file should only be run on new Macs as it bootstraps the system
#

case "$OSTYPE" in
	darwin*)
		;;
	*)
		echo "Not OS X"
		exit 1
		;;
esac



trap 'ret=$?; test $ret -ne 0 && printf "failed\n\n" >&2; exit $ret' EXIT
set -e

echo "=> Bootstrapping OS X"

echo "==> Xcode"
if ! command -v cc >/dev/null; then
	echo "--> installing"
	xcode-select --install
fi

echo "==> Homebrew"
if ! command -v brew >/dev/null; then
	echo "--> installing"
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" </dev/null
fi

echo "==> Ansible"
if ! command -v ansible >/dev/null; then
	echo "--> installing"
	brew install ansible
fi

echo "==> Turning on remote login and management for ansible to work"
sudo systemsetup -setremotelogin on # deprecated, use 'sudo launchctl load -w /System/Library/LaunchDaemons/ssh.plist' instead 
sudo /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -activate -configure -access -on -users admin -privs -all -restart -agent -menu

echo "==> Running ansible playbook"
ansible-playbook playbook.yml -i localhost, -kK

echo "==> Finished Bootstrapping"
