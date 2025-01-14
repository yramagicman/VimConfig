#!/bin/sh

#------------------------------------------------------------------------------
# Project Name      - VimConfig/devutils/links.sh
# Started On        - Sun 22 Oct 00:15:02 BST 2017
# Last Change       - Mon  2 Aug 17:22:35 BST 2021
# Author E-Mail     - terminalforlife@yahoo.com
# Author GitHub     - https://github.com/terminalforlife
#------------------------------------------------------------------------------
# Just a simple, quick script to update the hard links when changing branches.
#------------------------------------------------------------------------------

exec 2> /dev/null

if cd "$HOME/GitHub/terminalforlife/Personal/VimConfig/source"; then
	mkdir -pv "$HOME/.vim/plugin"
	mkdir -pv "$HOME/.vim/snippet"
	mkdir -pv "$HOME/.vim/colors"

	mkdir -pv "$HOME/.vim/plugin/gcmsg"
	mkdir -pv "$HOME/.vim/plugin/moredoc"

	if command -v vim 1> /dev/null; then
		for FILE in plugin/*.vim; do
			ln -vf "$FILE" $HOME/.vim/plugin/${FILE##*/}
		done

		ln -vf plugin/moredoc/moredoc.vim "$HOME/.vim/plugin/moredoc/"
		ln -vf plugin/gcmsg/gcmsg.vim "$HOME/.vim/plugin/gcmsg/"

		for FILE in snippet/*; do
			ln -vf "$FILE" $HOME/.vim/snippet/${FILE##*/}
		done

		ln -vf colors/tfl.vim $HOME/.vim/colors/
		ln -vf colors/tfl-subtle.vim $HOME/.vim/colors/
		ln -vf .vimrc $HOME/
	fi
fi
