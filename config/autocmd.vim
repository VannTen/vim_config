"Autocmd file for VIM
"


"Vim files autocmd ---------------{{{

augroup VIM-config
    autocmd!
    autocmd BufWritePost *.vim source $MYVIMRC
    autocmd FileType vim setlocal foldmethod=marker
    autocmd Filetype vim setlocal foldlevel=0
augroup END
" }}}

" Handling whitespaces and tabs--------{{{

augroup Spaces-commands
	autocmd!
	autocmd FileType c,cpp,java,php autocmd BufWritePre <buffer> %s/\s\+$//e " Suppress whitespaces at end of line
	autocmd FileType c,cpp,java,php autocmd BufWritePre <buffer> %s/^ \+//e " Suppress whitespaces at beginning of line
	autocmd FileType c,cpp,java,php autocmd BufWritePre <buffer> %s/^\s\+$//e " Suppress whitespaces on empty lines
augroup END
" }}}

" C files -------{{{
augroup C-commands
	autocmd!
	autocmd Filetype c,cpp setlocal colorcolumn=80 " Display column limit
augroup END
" }}}
