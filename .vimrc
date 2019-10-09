set shell=/bin/bash

call plug#begin('~/.vim/plugged')

Plug 'julien/vim-miniml'
Plug 'itchyny/lightline.vim'
Plug 'dag/vim-fish'
Plug 'dart-lang/dart-vim-plugin'
Plug 'kovetskiy/sxhkd-vim'
Plug 'lervag/vimtex'

call plug#end()

set termguicolors

syntax on
colorscheme miniml

set printencoding=utf-8
set encoding=utf-8

set autoindent

set shiftwidth=2
set softtabstop=2
set tabstop=2
set noexpandtab

set laststatus=2
set noshowmode

set undodir=~/.vimdid
set undofile

set number 
set relativenumber
