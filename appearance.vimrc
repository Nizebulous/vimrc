syntax enable
set background=dark
set number
set laststatus=2
set wildignore=*.pyc,.DS_Store,*.id
set showmatch

" Set color scheme and then tweak a little
colorscheme two2tango
:hi ColorColumn term=reverse ctermbg=238 guibg=#4A4A4A
set guifont=Iosevka:h14

" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif
set ttyfast
set equalalways

