"Bindings file for VIM
"Loaded by .vimrc

" General things -----------------{{{

let mapleader = ","
let maplocalleader = "\\"

inoremap ii <esc>
vnoremap ii <esc>
inoremap <esc> <nop>
inoremap <leader>w <esc>:write<CR>
nnoremap <leader>w :write<CR>
nnoremap <leader>aw :wall<CR>

nnoremap <leader>sv :source $MYVIMRC<cr>:nohlsearch<cr>
nnoremap <F2> :call Insert_header_42()<cr>

noremap <Up> <nop>
noremap <Down> <nop>
noremap <Right> <nop>
noremap <Left> <nop>

nnoremap <CR> o<esc>
nnoremap <leader><CR> O<esc>
nnoremap <leader>hl :nohlsearch<CR>

nnoremap <BS>sw :!rm ~/.vim/swap/*<CR><CR>

nnoremap - ddp
nnoremap _ ddkkp
" }}}

"Auto closing parenthesesm, brackets, quotes


"Add things around things -----------------{{{

nnoremap <leader>' viw<esc>bi'<esc>ea'<esc>
nnoremap <leader>" viw<esc>bi"<esc>ea"<esc>
nnoremap <leader>[ viw<esc>bi[<esc>ea]<esc>
nnoremap <leader>( viw<esc>bi(<esc>ea)<esc>
vnoremap <leader>' c''<esc>P
vnoremap <leader>" c""<esc>P
vnoremap <leader>( c()<esc>P
vnoremap <leader>[ c[]<esc>P

inoremap <c-u> <esc>viwU<esc>i
" }}}

"Frequent Abbrevations ----------------{{{
iabbrev @@ mgautier@student.42.fr
iabbrev mg Max Gautier

" }}}

"Movement ----------------{{{

nnoremap j gj
nnoremap k gk
inoremap <leader>o <esc>jA
nnoremap L $
nnoremap H ^
" }}}

"Operators -------------------------------------{{{

onoremap in) :execute "normal! ?)\r:nohlsearch\r"<CR><Left>vi(
onoremap in( :execute "normal! /(\r"<Left>vi(<cr><esc>:nohlsearch<cr>i<Right>
onoremap in} :execute "normal! ?}\r"<Left>vi{<cr><esc>:nohlsearch<cr>i<Right>
onoremap in{ :execute "normal! /{\r"<Left>vi{<cr><esc>:nohlsearch<cr>i<Right>
"onoremap in" :execute "normal! ?\"\r"<Left>vi\"<cr><esc>:nohlsearch<cr>
"onoremap in" :execute "normal! /\"\r"<Left>vi\"<cr><esc>:nohlsearch<cr>
"onoremap in' :execute "normal! ?'\r"<Left>vi'<cr><esc>:nohlsearch<cr>
"onoremap in" :execute "normal! /'\r"<Left>vi'<cr><esc><esc>:nohlsearch<cr>
" }}}

"File specific bindings

"C Files -----------------------------------------{{{

augroup C-Bindings
	autocmd!
	"autocmd FileType c nnoremap <buffer> <localleader>c
	"autocmd Filetype c iabbrev <buffer>
	"autocmd FileType c iabbrev <buffer> ( ()<Left>
	"autocmd FileType c inoremap { {<CR><CR>}<Up>
	"autocmd Filetype c inoremap <buffer> main int main(int argc, char *argv[])<cr>{<cr>}<Up>
augroup END
" }}}

"VIM files --------------{{{
augroup VIM-Bindings
	autocmd!
	"autocmd FileType vim nnoremap <buffer> <localleader>iC
augroup END
" }}}

"Comments ---------------{{{
augroup Comments-Bindings
	autocmd!
	autocmd FileType vim nnoremap <buffer> <localleader>c ^i"<esc>
	autocmd FileType nnoremap <buffer> <localleader>c ^i//<esc>
