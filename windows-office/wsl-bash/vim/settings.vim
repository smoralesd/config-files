" default behaviour for tab and indentation stuff
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

let mapleader="\<Space>"

" enable cursor line highlighting
set cursorline
" enable line numbers
set number
" disable line wrapping
set nowrap
" show matching parenthesis
set showmatch

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

" set laststatus=2
" make the default split to be below
set splitbelow

" set cmdheight=2

" use system clipboard
" set clipboard=unnamedplus

" enable omnifunction for auto completion
" set omnifunc=syntaxcomplete#Complete

" set file auto read on file changed externally
set autoread

" Always show current position
set ruler

" do not show mode (vim-airline is showing the mode)
" set noshowmode

set wildignore+=*/node_modules/*

