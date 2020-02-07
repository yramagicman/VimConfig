"------------------------------------------------------------------------------
" Project Name      - VimConfig/source/plugin/tflsnips.vim
" Started On        - Mon  5 Mar 17:21:01 GMT 2018
" Last Change       - Mon  3 Feb 18:58:18 GMT 2020
" Author E-Mail     - terminalforlife@yahoo.com
" Author GitHub     - https://github.com/terminalforlife
"------------------------------------------------------------------------------
" Various incredibly useful snippet-like things. Edit as needed... good luck.
"------------------------------------------------------------------------------

if filereadable(expand("$HOME") . "/.vim/snippet/setup")
	noremap <silent> <leader>setup :r $HOME/.vim/snippet/setup<CR>
endif

if filereadable(expand("$HOME") . "/.vim/snippet/psetup")
	noremap <silent> <leader>psetup :r $HOME/.vim/snippet/psetup<CR>
endif

if filereadable(expand("$HOME") . "/.vim/snippet/modeline")
	noremap <silent> <leader>modeline :r $HOME/.vim/snippet/modeline<CR>
endif

if filereadable(expand("$HOME") . "/.vim/snippet/error")
	noremap <silent> <leader>error :r $HOME/.vim/snippet/error<CR>
endif

if filereadable(expand("$HOME") . "/.vim/snippet/wgetchk")
	noremap <silent> <leader>wgetchk :r $HOME/.vim/snippet/wgetchk<CR>
endif

if filereadable(expand("$HOME") . "/.vim/snippet/updatechk")
	noremap <silent> <leader>updatechk :r $HOME/.vim/snippet/updatechk<CR>
endif

if filereadable(expand("$HOME") . "/.vim/snippet/bsetup")
	noremap <silent> <leader>bsetup :r $HOME/.vim/snippet/bsetup<CR>
endif

if filereadable(expand("$HOME") . "/.vim/snippet/args")
	noremap <silent> <leader>args :r $HOME/.vim/snippet/args<CR>
endif

if filereadable(expand("$HOME") . "/.vim/snippet/pcsetup")
	noremap <silent> <leader>pcsetup :r $HOME/.vim/snippet/pcsetup<CR>
endif

noremap <silent> <leader>bar 0i#<Esc>82a-<Esc>0