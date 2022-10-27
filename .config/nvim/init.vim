call plug#begin()

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'tanvirtin/monokai.nvim'

call plug#end()

let mapleader = ","

set scrolloff=3

set mouse=a

set hidden

set wildmode=list:longest,full

set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

set termguicolors
set background=dark
syntax enable

set clipboard=unnamed

set ignorecase

colorscheme monokai_pro

nnoremap <C-p> :Files<CR>
nnoremap <C-l> :Buffers<CR>
nnoremap <leader><leader> :noh<cr>

filetype indent plugin on

lua <<EOF
require'nvim-treesitter.configs'.setup {
    ensure_installed = "maintained",
    sync_install = false,
    ignore_install = { },
    highlight = {
        enable = true,
        disable = { },
        additional_vim_regex_highlighting = false
    }
}
EOF
