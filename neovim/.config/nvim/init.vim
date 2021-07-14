let mapleader = " "

call plug#begin('~/.vim/plugged')

    " Telescope
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-fzy-native.nvim'

    " LSP
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/nvim-compe'

    " Themes
    Plug 'gruvbox-community/gruvbox'
    Plug 'arcticicestudio/nord-vim'
    Plug 'vim-airline/vim-airline'

    " Git plugins
    Plug 'tpope/vim-fugitive'
    Plug 'mhinz/vim-signify'
    Plug 'junegunn/gv.vim'

    " Other
    Plug 'mhinz/vim-startify', { 'branch': 'center' }
    Plug 'mbbill/undotree'
    "Plug 'jiangmiao/auto-pairs'
    Plug 'dbeniamine/cheat.sh-vim'
    "Plug 'liuchengxu/vim-which-key'

    " For tmux
    Plug 'edkolev/tmuxline.vim'

call plug#end()

let g:tmuxline_powerline_separators = 0

if executable('rg')
    let g:rg_derive_root='true'
endif

let loaded_matchparen = 1

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup MY_GROUP
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END
