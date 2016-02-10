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
" make the default split to be below
set splitbelow

set cmdheight=2

" use system clipboard
set clipboard=unnamedplus

" enable omnifunction for auto completion
set omnifunc=syntaxcomplete#Complete

" set file auto read on file changed externally
set autoread

" Always show current position
set ruler

" do not show mode (vim-airline is showing the mode)
set noshowmode

" set different cursor color for different modes (insert vs normal/visual)
if &term =~ "xterm\\|rxvt"
    " use an orange cursor in insert mode
    let &t_SI = "\<Esc>]12;orange\x7"
    " use a red cursor otherwise
    let &t_EI = "\<Esc>]12;red\x7"
    silent !echo -ne "\033]12;red\007"

    " use this values for cursor type
    " 1 or 0 -> blinking block
    " 3 -> blinking underscore
    " 4 -> solid underscore
    " Recent versions of xterm (282 or above) also support
    " 5 -> blinking vertical bar
    " 6 -> solid vertical bar
    let &t_SI .= "\<Esc>[3 q"
    let &t_EI .= "\<Esc>[2 q"

    " reset cursor when vim exits
    autocmd VimLeave * silent !echo -ne "\033]112\007"
endif

