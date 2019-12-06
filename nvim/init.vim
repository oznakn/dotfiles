set shell=/bin/bash

call plug#begin('/home/oznakn/.vim/plugged')

Plug 'julien/vim-miniml'
Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'dag/vim-fish'
Plug 'kovetskiy/sxhkd-vim'
Plug 'lervag/vimtex'
Plug 'rust-lang/rust.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'machakann/vim-highlightedyank'
Plug 'airblade/vim-rooter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'cespare/vim-toml'
Plug 'stephpy/vim-yaml'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'jrozner/vim-antlr'

call plug#end()

set termguicolors

if &shell =~# 'fish$'
    set shell=sh
endif

syntax enable
filetype plugin indent on
colorscheme miniml
compiler fish

set printencoding=utf-8
set encoding=utf-8

set autoindent

set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

set laststatus=2
set noshowmode

set undodir=~/.vimdid
set undofile

set number 
set relativenumber

map <C-n> :NERDTreeToggle<CR>
map <C-p> :FZF<CR>
