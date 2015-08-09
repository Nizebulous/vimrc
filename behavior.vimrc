" Search
set incsearch
set hlsearch

" Behavior
set wildmenu
set wildmode=longest,full
set autoread
au BufEnter * :checktime
set encoding=utf8
set ffs=unix,dos,mac
set expandtab
set shiftwidth=4
set tabstop=4
set backspace=2
set autochdir
set directory=/tmp/ 

let mapleader = ","

"" Line handling
set ai
set si
set lbr
set wrap
set nolist

" Files
set nobackup
set nowb
set noswapfile

" Movement
map j gj
map k gk

" more natural splits by default
set splitbelow
set splitright

" Remember info about open buffers on close
set viminfo^=%
