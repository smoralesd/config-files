" activate, add the following to ~/.vimrc
" source $HOME/.vim/config.vim

" Make vim more useful. I think this drops vi compatibility.
" This allows vim to do a lot more and stray from it's roots.
set nocompatible

filetype plugin indent on

let mapleader="\<Space>"

" enable cursor line highlighting
set cursorline
" enable line numbers
set number
" disable line wrapping
set nowrap

" set case sensitibity for search pattern
set ignorecase
set smartcase

" enable incremental search
set incsearch
" enable highlighting for search term
set hlsearch

syntax enable

set nobackup
set noswapfile
set hidden
set encoding=utf-8

set laststatus=2
" make the default split to be below set splitbelow

set cmdheight=2

" source the mappings files

source $HOME/.vim/mappings.vim

