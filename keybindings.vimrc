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

" ctrlp settings
noremap <leader>,p :CtrlP<cr>
noremap <leader>,b :CtrlPBuffer<cr>
noremap <leader>,g :CtrlPTag<cr>
noremap <leader>,c :CtrlPClearAllCaches<cr>
noremap <leader>,\ :CtrlPBufTag<cr>

" rope
noremap <leader>9 :RopeAutoImport<cr>

nnoremap ; :
" nnoremap : ;

inoremap <expr>  <C-K>   BDG_GetDigraph()
