set nocp

"Filetype stuff
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin on

"Make .hpp, .h, .cpp, .c files all use the cpp configuration settings located
"in bundle/file-config/after/ftplugin/cpp.vim
if has("autocmd")
	autocmd BufNewFile,BufRead *.h,*.hpp,*.c setfiletype cpp
endif

colo wombat
syntax on
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
