set nocp
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin on

colo wombat
syntax on
set tabstop=4
set autoindent
set number " Line Numbers
set autochdir
set scrolloff=5 "Leave at least 5 lines up/down
set ttyfast
set noerrorbells

" Searching
set incsearch
set ignorecase
set showmatch
set diffopt=filler,iwhite "Ignore all whitespace

" Tags
set tags+=./tags
set tags+=tags;$HOME
set tags+=~/.vim/tags/cpp
autocmd BufWritePost *.c,*.cpp,*.h silent! !ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .

" Supertab
let g:SuperTabDefaultCompletionType = "context"

" OmniCppComplete
let OmniCpp_NamespaceSearch = 2
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 "Show function params
let OmniCpp_MayCompleteDot = 1 " Autocomplete after .
let OmniCpp_MayCompletArrow = 1 " Autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " Autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]

" Auto open/close the popup/preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclode|endif
set completeopt=menuone,menu,longest

