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
set directory=/tmp/ 
set tags=tags;
set autochdir
set nofoldenable " disable folding
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

" more natural splits by default
set splitbelow
set splitright

" Remember info about open buffers on close
set viminfo^=%

" redraw behavior
" set ttyfast
