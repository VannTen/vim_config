"Autocmd file for VIM
"


"Vim files autocmd ---------------{{{

augroup VIM-config
	autocmd!
	autocmd BufWritePost *.vim source $MYVIMRC
	autocmd FileType vim setlocal foldmethod=marker
	autocmd Filetype vim setlocal foldlevel=0
	autocmd Filetype vim setlocal textwidth=0 "Allow longer lines
augroup END
" }}}

" Handling whitespaces and tabs--------{{{

augroup Spaces-commands
	autocmd!
	autocmd FileType c,cpp,java,php autocmd BufWritePre <buffer> %s/\s\+$//e " Suppress whitespaces at end of line
	autocmd FileType c,cpp,java,php autocmd BufWritePre <buffer> %s/^ \+//e " Suppress whitespaces at beginning of line
	autocmd FileType c,cpp,java,php autocmd BufWritePre <buffer> %s/^\s\+$//e " Suppress whitespaces on empty lines
	autocmd FileType c,cpp,java,php autocmd BufWritePre <buffer> 12,$s/  \+/ /e " Suppress double whitespaces 
augroup END
" }}}

" C files -------{{{
augroup C-commands
	autocmd!
	autocmd Filetype c,cpp setlocal colorcolumn=80 " Display column limit
augroup END
" }}}

" Indenting ---------{{{

augroup Indent-Commands
	autocmd!
	"autocmd FileType c autocmd BufWritePre <buffer> normal! m`gg=G`` " indent all lines and go back to cursor postion
augroup END
" }}}

" Comment ----------{{{

augroup Comment-Commands
	autocmd!
	autocmd Filetype c setlocal comments=sr:/*,mb:**,ex:*/
augroup END
" }}}
