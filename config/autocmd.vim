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

" Git commit --------{{{

augroup Git
	autocmd!
	autocmd Filetype gitcommit setlocal textwidth=72  " Format the git commits nicely
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
	autocmd Filetype c,cpp,make setlocal colorcolumn=80 " Display column limit
	autocmd Filetype c setlocal foldlevel=0
augroup END
" }}}

" Indenting ---------{{{

augroup Indent-Commands
	autocmd!
	"autocmd FileType c autocmd BufWritePre <buffer> normal! m`gg=G`` " indent all lines and go back to cursor postion
augroup END
" }}}

" Folding file specific --------{{{

augroup Folding
	autocmd!
	autocmd BufReadPre *Srcs.mk setlocal foldmethod=indent
	autocmd BufReadPre *Srcs.mk setlocal foldlevel=0
augroup END
" }}}

" Comment ----------{{{

augroup Comment-Commands
	autocmd!
	autocmd Filetype c,cpp setlocal comments=sr:/*,mb:**,ex:*/ "Change the comments auto format - for 42 norm
	autocmd FileType c,cpp autocmd BufWritePre <buffer> %s/^* /** /e " Put comments into correct format
augroup END
" }}}
