" Dependencies
Plug 'xolox/vim-misc'
Plug 'Shougo/neoinclude.vim'
Plug 'Shougo/vimproc.vim'

" Text
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround' " ysiw
Plug 'terryma/vim-multiple-cursors' " <C-n>
Plug 'easymotion/vim-easymotion' " <,.> f, <,.> t, <,.> w, etc
Plug 'goldfeld/vim-seek' " s<char><char> to seek (1s for old seek behavior)
Plug 'michaeljsmith/vim-indent-object' " add indent as motion object i
Plug 'Raimondi/delimitMate' " automatically close paired characters

" Interface
Plug 'tpope/vim-fugitive' " git
Plug 'moll/vim-bbye' " :BDelete
Plug 'xolox/vim-session' 
Plug 'tpope/vim-eunuch' " unix-alike commands
Plug 'tpope/vim-rhubarb' " <C x><C o> auto-complete of issue numbers in git commit messages
Plug 'xolox/vim-notes'
Plug 'Shougo/neocomplete.vim' " keyword completion
Plug 'scrooloose/syntastic' " syntax checking
Plug 'Shougo/unite.vim' " multiple-source fuzzy navigation
Plug 'tsukkee/unite-tag' " tag source for unite
Plug 'Shougo/neoyank.vim' " yank source for unite

" Behavior
Plug 'ludovicchabant/vim-gutentags'
Plug 'pbrisbin/vim-mkdir' " automatically create directories to save
Plug 'tpope/vim-repeat'
"
" Appearance plugins
Plug 'bling/vim-airline' " status line
Plug 'flazz/vim-colorschemes'
Plug 'blueyed/vim-diminactive' " dim inactive pane
Plug 'cabin/cabin-colorscheme' 
Plug 'luochen1990/rainbow' " parenthesis highlighting
Plug 'airblade/vim-gitgutter'
Plug 'unblevable/quick-scope' " highlight characters to t/f to

" Syntaxes
Plug 'lepture/vim-jinja'
Plug 'chase/vim-ansible-yaml'
Plug 'markcornick/vim-terraform'

" Erlang
Plug 'vim-erlang/vim-erlang-runtime'
Plug 'vim-erlang/vim-erlang-tags'
Plug 'vim-erlang/vim-erlang-compiler'

" Python plugins
Plug 'tell-k/vim-autopep8'
Plug 'python-rope/ropevim'
Plug 'davidhalter/jedi-vim'

" Pandoc plugins
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-pandoc/vim-pandoc'

" Clojure
Plug 'guns/vim-sexp'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'guns/vim-clojure-static'
Plug 'guns/vim-clojure-highlight'
Plug 'tpope/vim-fireplace'
