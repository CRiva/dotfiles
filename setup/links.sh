#!/bin/sh

[ ! -e ~/.bash_profile ] && ln -s ~/dotfiles/shells/bash_profile .bash_profile

[ ! -d ~/tmp ] && mkdir ~/tmp
[ ! -e ~/.gitconfig ] && ln -s ~/dotfiles/utils/gitconfig .gitconfig
[ ! -e ~/.gitignore_global ] && ln -s ~/dotfiles/utils/gitignore_global .gitignore_global