set nocp
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin on

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

" Tags
set tags+=./tags
set tags+=tags;$HOME
set tags+=~/.vim/tags/cpp
autocmd BufWritePost *.c,*.cpp,*.h silent! !ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .

" Supertab
let g:SuperTabDefaultCompletionType = "context"

" Clang Complete
let g:clang_complete_copen = 1
let g:clang_use_library = 1
let g:clang_library_path = '/usr/lib'

" ProtoDef config
let g:protodefprotogetter = $HOME . '/.vim/bundle/protodef/pullproto.pl'
let g:disable_protodef_mapping = 1 " Remove this line to enable the default mappings, the set value is meaningless
" Format the style after generation
nmap <buffer> <silent> <leader>PP 	:set paste<cr>i<c-r>=protodef#ReturnSkeletonsFromPrototypesForCurrentBuffer({})<cr><esc>='[:set nopaste<cr>:%!astyle --style=whitesmith -s4<cr>
nmap <buffer> <silent> <leader>PN :set paste<cr>i<c-r>=protodef#ReturnSkeletonsFromPrototypesForCurrentBuffer({'includeNS' : 0})<cr><esc>='[:set nopaste<cr>:%!astyle --style=whitesmith s4<cr>

" Auto open/close the popup/preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclode|endif
set completeopt=menuone,menu,longest
