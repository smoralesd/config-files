call plug#begin('~/vimfiles/plugged')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" status/tabline for vim
Plug 'vim-airline/vim-airline'
" airline themes
Plug 'vim-airline/vim-airline-themes'
" file/folder look up
Plug 'ctrlpvim/ctrlp.vim'
" easy to use, file-type sensible comments
Plug 'tomtom/tcomment_vim'
" Solarized color theme for vim
Plug 'altercation/vim-colors-solarized'
" provides insert mode auto-completion for quotes, parentheses, brackets...
Plug 'Raimondi/delimitMate'
" Show a diff via Vim sign column.
Plug 'mhinz/vim-signify'
" quoting/parenthesizing made simple
Plug 'tpope/vim-surround'
" bronson/vim-trailing-whitespace
Plug 'ntpeters/vim-better-whitespace'

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" airline config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme='wombat'
let g:airline_powerline_fonts = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" solarized config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark
colorscheme solarized
