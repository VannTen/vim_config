"VIM basic settings 
"That file is read by vimrc in the .vim directory

filetype plugin indent on

" Indentation settings --------------------------{{{
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in TAB when editing
set noexpandtab
set autoindent
" }}}

"UI settings -------------------------------{{{

set showcmd
set cursorline
set mouse=a
set wildmenu 	" visual autocomplete for command menu
set showmatch	" higlhlight matching () and the like
if v:version >= 704
	set number		" The two number allow hybrid mode on version 7.4 and more. Otherwise, just relative number
endif
set relativenumber      " Put lines numbers on
set background=dark "Colors config
colorscheme elflord
syntax on       " Enables syntax coloring
set title       " Window title = file name

" Statusline with column number
set statusline=%f  " File Name
set statusline+=\  " Separator
set statusline+=%y " Filetype
set statusline+=\  " Separator
set statusline+=%m " If file is modified since last write
set statusline+=\ %{strftime('%c')} " Displays date and time
set statusline+=%= " Right side
set statusline+=Line\ 
set statusline+=%l\ of\ %L "Line number/Number of lines in file
set statusline+=\ /\ " Separator
set statusline+=Column\ 
set statusline+=%c 
hi StatusLine ctermbg=magenta ctermfg=black

"Indicate active split with status line
augroup activeSplitStatusLine
	autocmd WinEnter * hi StatusLine ctermbg=magenta ctermfg=black
	autocmd WinLeave * hi StatusLine ctermbg=none ctermfg=white
augroup END

set scrolloff=100 " Keep the cursor in the middle

" }}}

"Search ---------------------------{{{

set incsearch   " search while characters are entered
set hlsearch    " higlight match
" }}}

"Folding ---------------------{{{

set foldenable
set foldlevelstart=10   " control fold level
set foldmethod=syntax
" }}}

" Splits -----------{{{

set splitbelow
set splitright
" }}}

"Backups and undos ----------------{{{

set backup
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
" }}}
