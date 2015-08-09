set shell=/bin/bash
set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'luochen1990/rainbow'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
Plug 'moll/vim-bbye'
Plug 'ludovicchabant/vim-gutentags'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-vinegar'
Plug 'thinca/vim-ref'
Plug 'chrisbra/NrrwRgn'
Plug 'diepm/vim-rest-console'
Plug 'mtth/scratch.vim'
Plug 'tpope/vim-eunuch'
Plug 'wincent/ferret'
Plug 'pbrisbin/vim-mkdir'
Plug 'tpope/vim-repeat'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'

" Appearance plugins
Plug 'bling/vim-airline'
Plug 'flazz/vim-colorschemes'
Plug 'blueyed/vim-diminactive'

" Syntax
Plug 'lepture/vim-jinja'
Plug 'chase/vim-ansible-yaml'

" Prose plugins
Plug 'reedes/vim-pencil'

" Erlang
Plug 'vim-erlang/vim-erlang-runtime'
Plug 'vim-erlang/vim-erlang-tags'
Plug 'vim-erlang/vim-erlang-compiler'

" Python plugins
Plug 'scrooloose/syntastic'
Plug 'davidhalter/jedi-vim'
Plug 'tell-k/vim-autopep8'
Plug 'python-rope/ropevim'
Plug 'Raimondi/delimitMate'
Plug 'jaxbot/semantic-highlight.vim'

" Markdown plugins
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

call plug#end()
filetype indent plugin on

" Appearance
syntax enable
set background=dark
set number
set laststatus=2
set wildignore=*.pyc,.DS_Store,*.id
set showmatch

" Set color scheme and then tweak a little
colorscheme iceberg
set guifont=Luculent:h13
" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif
set ttyfast
set equalalways

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
map <leader>q :Bdelete<cr>
map <leader>aq :bufdo :Bdelete<cr>

" more natural splits by default
set splitbelow
set splitright

" tags
" set tags=tags;

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()
autocmd BufWrite *.erl call DeleteTrailingWS()

" python settings
"au FileType python setlocal formatprg=autopep8\ -
autocmd FileType python setlocal omnifunc=RopeCompleteFunc

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

" airline options
let g:airline#extensions#tabline#enabled = 1
let g:airline_left_sep=':'
let g:airline_right_sep=':'
let g:airline_theme = 'luna'  

" vim-session options
let g:session_autoload='yes'
let g:session_autosave='yes'
let g:session_autosave_periodic=5

" syntastic options
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_flake8_args = "--max-line-length=160"
let g:syntastic_python_checkers = ['flake8']

" autopep8
let g:autopep8_max_line_length=159
autocmd FileType python map <buffer> <leader>8 :call Autopep8()<CR>
let g:autopep8_disable_show_diff=0

" youcompleteme settings
let g:ycm_key_list_select_completion = ['<Tab>', '<Down>']

" fugitive settings
noremap <space>gw :Gwrite<cr><cr>
noremap <space>gc :Gcommit<cr>
noremap <space>gb :Git checkout -b<Space>
noremap <space>go :Git checkout<Space>
noremap <space>gs :Gstatus<cr>
noremap <space>gp :Gpush<cr>

" ctrlp settings
noremap <C-b> :CtrlPBuffer<cr>
noremap <leader>g :CtrlPTag<cr>
noremap <leader>c :CtrlPClearAllCaches<cr>
noremap <C-\> :CtrlPBufTag<cr>

" diminactive options
let g:diminactive_use_syntax=1
:hi ColorColumn term=reverse ctermbg=238

" rainbow settings
let g:rainbow_active=1

" gutentags
let g:gutentags_project_root=["~/envs"]
