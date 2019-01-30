call plug#begin('~/.vim_plug')

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'pangloss/vim-javascript'
Plug 'posva/vim-vue'

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

"set termguicolors
set background=dark
syntax enable
colorscheme desert

set clipboard=unnamed

set ignorecase

nnoremap <C-p> :Files<CR>
nnoremap <C-l> :Buffers<CR>

function! SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
