"set paste
set clipboard=unnamed,autoselect
if &compatible
    set nocompatible
endif

" visual settings
set tabstop=4
set smartindent
set shiftwidth=4
set backspace=indent,eol,start
set display+=lastline
set number
set cursorline
"set background=dark
colorscheme elflord
syntax on
" make tab etc. visible when type :set list 
set listchars=tab:^.,trail:_,eol:↲,extends:>,precedes:<,nbsp:%
 
" match uppercase even if lowercase
set smartcase

" keymaps
nmap <Esc><Esc> :nohlsearch<CR><Esc>
inoremap <C-c> <ESC>
inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap ( ()<ESC>i
inoremap (<Enter> ()<Left><CR><ESC><S-o>
"set imdisable

" dont show cursorline if txt file
autocmd BufNewFile,BufRead *.txt setlocal nocursorline

" read vimrc_local file. this file is environment-dependency and private.
if filereadable(expand($HOME.'/.localsetting/vimrc_local'))
	source $HOME/.localsetting/vimrc_local
endif
