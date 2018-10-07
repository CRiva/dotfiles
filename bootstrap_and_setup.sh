#!/bin/sh

sh ~/dotfiles/bootstrap.sh
sh ~/dotfiles/setup.sh

echo "=> Restarting computer in 10 seconds. Press ctrl-c to cancel."

sleep 10s

sudo shutdown -r now