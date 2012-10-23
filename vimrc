set nocp

"Filetype and Bundle stuff
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin on

"Make .hpp, .h, .cpp, .c files all use the cpp configuration settings located
"in bundle/file-config/after/ftplugin/cpp.vim
if has("autocmd")
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

set clipboard+=unnamed " Yanks go to cliboard
set title " Inherit vims title, not the terminals
set hidden " Allows multiple buffer managing
set backspace=indent,eol,start " Fix backspace on broken machines
set tabstop=4
set autoindent
set number " Line Numbers
set autochdir
set scrolloff=5 "Leave at least 5 lines up/down
set ttyfast
set noerrorbells
set history=1000 " Remeber moe commands, this isn't the stone ages
let mapleader = "," 

" Searching
set incsearch
set ignorecase
set smartcase
set showmatch
set diffopt=filler,iwhite "Ignore all whitespace

" Supertab
let g:SuperTabDefaultCompletionType = "context"
