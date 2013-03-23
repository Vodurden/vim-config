" Disable vi compatibility mode
set nocompatible
set encoding=utf-8

"Filetype and Bundle stuff
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin on

" Filetype associations
if has("autocmd")
	"Make .hpp, .h, .cpp, .c files all use the cpp configuration settings located
	"in bundle/file-config/after/ftplugin/cpp.vim
	autocmd BufNewFile,BufRead *.h,*.hpp,*.c,*.cpp setfiletype cpp
endif

" Themeing
set background=dark
colorscheme solarized
syntax on

if has("gui_running")
	if has("gui_gtk2")
		set guifont=Inconsolata\ 12
	elseif has("gui_win32") " Different font for windows
		set guifont=Consolas:h11:cANSI
	endif
endif

" Holy Tabs
set tabstop=4 
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

" Formatting
set encoding=utf-8 "The one true encoding
set clipboard+=unnamed " Yanks go to cliboard
set title " Inherit vim's title, not the terminals
set hidden " Allows multiple buffer managing
set backspace=indent,eol,start " Fix backspace on broken machines
set number " Line Numbers
set scrolloff=5 "Leave at least 5 lines up/down
set history=1000 " Remeber more commands, this isn't the stone ages
set autochdir
set ttyfast
set noerrorbells
set relativenumber
let mapleader = "," 

" Visual
set showmatch " Show matching braces

" Searching
set incsearch
set ignorecase
set smartcase
set showmatch
set diffopt=filler,iwhite "Ignore all whitespace

" Key Remapping
" - Better Window Movement
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Quicker command key
nnoremap ; :

" Supertab
let g:SuperTabDefaultCompletionType = "context"
