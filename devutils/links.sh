#!/bin/sh

#------------------------------------------------------------------------------
# Project Name      - VimConfig/devutils/links.sh
# Started On        - Sun 22 Oct 00:15:02 BST 2017
# Last Change       - Fri 31 Jan 21:59:23 GMT 2020
# Author E-Mail     - terminalforlife@yahoo.com
# Author GitHub     - https://github.com/terminalforlife
#------------------------------------------------------------------------------
# Just a simple, quick script to update the hard links when changing branches.
#------------------------------------------------------------------------------

set -e
. /usr/lib/tflbp-sh/Err
. /usr/lib/tflbp-sh/ChkDep
set +e

ChkDep ln rm

cd "$HOME/GitHub/terminalforlife/Personal/VimConfig/source"

{
	if command -v vim 1> /dev/null; then
		for FILE in plugin/*.vim; do
			rm -v $HOME/.vim/plugin/${FILE##*/} &&
				ln -v "$FILE" $HOME/.vim/plugin/${FILE##*/}
		done

		for FILE in snippet/*; do
			rm -v $HOME/.vim/snippet/${FILE##*/} &&
				ln -v "$FILE" $HOME/.vim/snippet/${FILE##*/}
		done

		rm -v $HOME/.vim/colors/tfl.vim &&
			ln -v colors/tfl.vim $HOME/.vim/colors/

		rm -v $HOME/.vimrc && ln -v .vimrc $HOME/
	fi
} 2> /dev/null
