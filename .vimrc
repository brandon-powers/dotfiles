" No compatibility with vi
set nocompatible

" Set line numbers
set number

" Allow backspace in insert mode
set backspace=indent,eol,start

" Show current mode at the bottom
set showmode

" Reload files changed outside of vim
set autoread

" Turn on syntax highlighting
syntax on

" Turn off swap files
set noswapfile
set nobackup
set nowb

" Indentation
filetype plugin indent on
set autoindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set magic

" Ctrl-e to switch between split sessions (:vsp | :sp)
map <C-e> <C-w>

" Corrections for my often misdoings
command WQ wq
command Wq wq
command W w
command Q q
command Vsp vsp

" Folding
set foldmethod=indent
set foldlevelstart=2
nnoremap <space> za
vnoremap <space> zf
set nofoldenable

" Highlighting on search
set hlsearch
set incsearch

" Limit line length on commit messages
autocmd Filetype gitcommit setlocal spell textwidth=72

" Remove trailing whitespace on save
autocmd BufWritePost * silent! %s/\s\+$//g

" Plugins (tpope)
execute pathogen#infect()
