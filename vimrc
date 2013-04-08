" Disable vi compatibility mode
set nocompatible
set encoding=utf-8

" Windows Compatibility {
    " On windows we want to force '.vim' instead of vimfiles'
    " this makes it easier to use across systems.
    if has('win32') || has('win64')
        set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
    endif
" }

" Bundles {
    
    filetype off
    set rtp+=$HOME/.vim/bundle/vundle
    call vundle#rc()

    " Github Based {
        Bundle 'gmarik/vundle'
        Bundle 'altercation/vim-colors-solarized'
        Bundle 'wincent/Command-T'
        Bundle 'scrooloose/nerdtree'
        Bundle 'Valloric/YouCompleteMe'
    " }

    " Vim-Scripts Based {
        Bundle 'a.vim' 
        Bundle 'taglist.vim'
    " }

    filetype plugin indent on
" }

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
