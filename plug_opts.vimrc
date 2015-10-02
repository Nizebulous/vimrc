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

" diminactive options
let g:diminactive_use_syntax=1

" rainbow settings
let g:rainbow_active=1

" gutentags
let g:gutentags_project_root=["~/envs"]

" neocomplete
let g:neocomplete#enable_at_startup = 1

autocmd FileType python setlocal omnifunc=jedi#completions
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0

if !exists('g:neocomplete#force_omni_input_patterns')
        let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.python = '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'

" delimitmate
let g:delimitMate_expand_cr = 1

let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
