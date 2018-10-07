#!/bin/sh

# https://stackoverflow.com/questions/19529999/add-package-control-in-sublime-text-3-through-the-command-line

source ~/dotfiles/private/platform

if [ ! -e ~/Library/Application\ Support/Sublime\ Text\ 3 ]; then 
    echo "--> Downloading Package Control";
    wget -O ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages https://packagecontrol.io/Package%20Control.sublime-package;
    echo "--> Package Control Installed"
else
    echo "--> Package Control Already Installed";  
fi

echo "--> Setting up sublime packages to install"
mkdir -p ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/
[ ! -e ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Package\ Control.sublime-settings ] && ln -s ~/dotfiles/setup/$PLATFORM/sublime/packages ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Package\ Control.sublime-settings



