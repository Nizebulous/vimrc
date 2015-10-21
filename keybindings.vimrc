" Window management
map <leader>tn :tabnew<cr>
map <leader>to :tabnext<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>q :Bdelete<cr>
map <leader>aq :bufdo :Bdelete<cr>

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" fugitive settings
noremap <leader>gw :Gwrite<cr><cr>
noremap <leader>gc :Gcommit<cr>
noremap <leader>gb :Git checkout -b<Space>
noremap <leader>go :Git checkout<Space>
noremap <leader>gs :Gstatus<cr>
noremap <leader>gp :Gpush<cr>

" unite
nnoremap <leader><leader>p :UniteWithProjectDir -start-insert -no-split file_rec/async<cr>
nnoremap <leader><leader>a :Unite g-no-split rep:.<cr>
let g:unite_source_history_yank_enable = 1
nnoremap <leader><leader>y :Unite -quick-match history/yank<cr>
nnoremap <leader><leader>b :Unite -quick-match -auto-preview -no-split buffer<cr>
nnoremap <leader><leader>\ :Unite -start-insert -no-split tag/include<cr>
nnoremap <leader><leader>g :UniteWithProjectDir -start-insert -no-split tag<cr>
nnoremap <leader><leader>G :UniteWithProjectDir -start-insert tag<cr>
nnoremap <leader><leader>P :UniteWithInputDirectory -start-insert -no-split file_rec/async<cr>

" rope
noremap <leader>9 :RopeAutoImport<cr>
noremap <leader>- :RopeOrganizeImports<cr>

nnoremap ; :
inoremap wq <esc>

" Enter insert after word
map <leader>e ea

