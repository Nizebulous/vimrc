set shell=/bin/bash
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'wincent/Command-T'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Appearance
syntax enable
set background=dark
set number
set laststatus=2
set wildignore=*.pyc,.DS_Store,*.id
set showmatch
colorscheme torte

" Search
set incsearch
set hlsearch
 
" Behavior
set wildmenu
set autoread
set encoding=utf8
set ffs=unix,dos,mac
set expandtab
set shiftwidth=4
set tabstop=4

"" Line handling
set ai
set si
set lbr
set tw=256

" Files
set nobackup
set nowb
set noswapfile

" CommandT options
let g:CommandTFileScanner="git"
