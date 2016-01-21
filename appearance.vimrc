syntax enable
set background=dark
set number
set laststatus=2
set wildignore=*.pyc,.DS_Store,*.id
set showmatch

" Set color scheme and then tweak a little
colorscheme hilal
" :hi ColorColumn term=reverse ctermbg=238 guibg=#4A4A4A
set guifont=Iosevka:h13

" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif
set ttyfast
set equalalways

let g:rainbow_guifgs = [ '#2c89a9', '#7acab0', '#ffaa88', '#28a0e0' ]
let g:rainbow_ctermfgs = [ '166', 'red', 'magenta', 'blue' ]

if !exists('g:rainbow_conf')
   let g:rainbow_conf = {}
endif
if !has_key(g:rainbow_conf, 'guifgs')
   let g:rainbow_conf['guifgs'] = g:rainbow_guifgs
endif
if !has_key(g:rainbow_conf, 'ctermfgs')
   let g:rainbow_conf['ctermfgs'] = g:rainbow_ctermfgs
endif
