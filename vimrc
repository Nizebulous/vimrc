set shell=/bin/bash
set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')
:runtime plugins.vimrc
call plug#end()
filetype indent plugin on

" preload
let g:neocomplete#enable_at_startup = 1

:runtime appearance.vimrc
:runtime behavior.vimrc
:runtime helpers.vimrc
:runtime plug_opts.vimrc
:runtime keybindings.vimrc
:runtime lang_opts.vimrc
