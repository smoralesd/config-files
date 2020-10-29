" vim-plug config

call plug#begin()

" Make your Vim a TypeScript IDE
Plug 'Quramy/tsuquyomi'

" Solarized theme for vim
Plug 'altercation/vim-colors-solarized'

" Typescript syntax for vim
Plug 'leafgarland/typescript-vim'

" Lean & mean status/tabline for vim that's light as air.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Fugitive is the premier Vim plugin for Git
Plug 'tpope/vim-fugitive'

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-airline config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme='wombat'
let g:airline_powerline_fonts=1
