" Use alt + hjkl to resize windows
nnoremap <C-j>  :resize -2<CR>
nnoremap <C-k>  :resize +2<CR>
nnoremap <C-h>  :vertical resize -2<CR>
nnoremap <C-l>  :vertical resize +2<CR>

" Lets make escape better
inoremap jk <Esc>
inoremap kj <Esc>

" Easy CAPS
inoremap <c-u> <Esc>viwUi
nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to next buffer
nnoremap <TAB>      :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB>    :bprevious<CR>

" Alternative way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" <TAB>: completion
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

