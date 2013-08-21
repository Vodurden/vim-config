" Disable vi compatibility mode
set nocompatible

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
        Bundle 'scrooloose/syntastic'
        Bundle 'jistr/vim-nerdtree-tabs'
        Bundle 'fholgado/minibufexpl.vim'
        Bundle 'Valloric/YouCompleteMe'
    " }

    " Vim-Scripts Based {
        Bundle 'a.vim' 
        Bundle 'taglist.vim'
    " }

    filetype plugin indent on
" }

" Filetype associations {
    if has("autocmd")
        "Make .hpp, .h, .cpp, .c files all use the cpp configuration settings located
        "in bundle/file-config/after/ftplugin/cpp.vim
        autocmd BufNewFile,BufRead *.h,*.hpp,*.c,*.cpp setfiletype cpp
    endif
" }

" User Interface {
    " Colours {
        set background=dark
        colorscheme solarized
        syntax on
    " }

    " Font {
        if has("gui_running")
            if has("gui_gtk2")
                set guifont=Inconsolata\ 12
            elseif has("gui_win32") " Different font for windows
                set guifont=Consolas:h11:cANSI
            endif
        endif
    " }

    " Searching {
        set incsearch
        set ignorecase
        set smartcase
        set showmatch
        set diffopt=filler,iwhite "Ignore all whitespace
        set showmatch " Show matching braces
    " }
" }

" Formatting {
    set encoding=utf-8 "The one true encoding
    set clipboard+=unnamed " Yanks go to cliboard
    set title " Inherit vim's title, not the terminals
    set hidden " Allows multiple buffer managing
    set backspace=indent,eol,start " Lazy backspace
    set number " Line Numbers
    set scrolloff=5 "Leave at least 5 lines up/down the cursor
    set scrolljump=5 " Lines to scroll when the cursor leaves the screen
    set history=1000 " Remeber more commands!
    set autochdir
    set ttyfast
    set noerrorbells
    set relativenumber
    
    " Tabs {
        set tabstop=4 
        set shiftwidth=4
        set softtabstop=4
        set expandtab
        set autoindent
    " }
" }

" Key bindings {
    let mapleader = "," 

    " Easy windows {
        map <C-h> <C-w>h
        map <C-j> <C-w>j
        map <C-k> <C-w>k
        map <C-l> <C-w>l
    " }

    " Do replace on word under cursor on the current line {
        nmap <leader>w :s/\(<c-r>=expand("<cword>")<cr>\)/
    " }

    " Change paste motion (source: http://stackoverflow.com/a/5357194/203133) {
        nmap <silent> cp :set opfunc=ChangePaste<CR>g@
        function! ChangePaste(type, ...)
            silent exe "normal! `[v`]\"_c"
            silent exe "normal! p"
        endfunction
    " }
" }

" Supertab
let g:SuperTabDefaultCompletionType = "context"
