#!/bin/bash
#
# Author: Erik Dubois (original), Sergey Ar.
#
# Problem solving commands
# Read before using it.
# https://www.atlassian.com/git/tutorials/undoing-changes/git-reset
# git reset --hard orgin/master
# ONLY if you are very sure and no coworkers are on your github.

# Command that have helped in the past
# Force git to overwrite local files on pull - no merge
# git fetch all
# git push --set-upstream origin master
# git reset --hard orgin/master
#setting up git
#https://www.atlassian.com/git/tutorials/setting-up-a-repository/git-config


echo
tput setaf 1
echo "################################################################"
echo "#####  Choose wisely - one time setup after clean install   ####"
echo "################################################################"
tput sgr0
echo
echo "Select the correct desktop"
echo
echo "0.  Do nothing"
echo "1.  Maxlion"
echo "Type the number..."

read CHOICE

case $CHOICE in

    0 )
		echo
		echo "We did nothing as per your request"
		echo
		;;

    1 )
			git config --global pull.rebase false
			git config --global push.default simple
		echo "Configuring Git username to e2e4l1..."
			git config --global user.name "e2e4l1"
		echo "Configuring Git email to xenionlion@gmail.com..."
			git config --global user.email "xenionlion@gmail.com"
		echo "Set core editor to Neovim..."	
			sudo git config --system core.editor nvim
			git config --global credential.helper cache
			git config --global credential.helper 'cache --timeout=32000'
		;;

	* )
		echo
		echo "Choose the correct number"
		echo
      ;;
esac

echo
echo "Github credentials have been set."
echo "Delete the ~/.cache/git folder if you made a mistake or"
echo "if you want to switch to another github credentials."
echo
