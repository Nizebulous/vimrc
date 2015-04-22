set shell=/bin/bash
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
let g:vundle_default_git_proto = 'git'
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'wincent/Command-T'
Plugin 'klen/python-mode'
Plugin 'rking/ag.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'blueyed/vim-diminactive'
Plugin 'luochen1990/rainbow'
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
colorscheme lucius
let g:rainbow_active=1
" Search
set incsearch
set hlsearch
 
" Behavior
set wildmenu
set wildmode=longest,full
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

" Visual mode
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

" Movement
map j gj
map k gk

" Window management
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" tags
set tags=~/makespace/site/.tags

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

" Remember info about open buffers on close
set viminfo^=%

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Helpers
function! VisualSelection(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

" CommandT options
let g:CommandTFileScanner="git"

" python-mode options
let g:pymode_lint_ignore = "W"
let g:pymode_options_max_line_length = 159
let g:pymode_lint_cwindow = 0
let g:pymode_options_colorcolumn = 0
noremap <leader> :PymodeLintAuto<cr>

" airline options
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'luna'

