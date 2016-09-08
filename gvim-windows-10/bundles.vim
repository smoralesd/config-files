" load Vundle, manages all the bundles
" You need to clone bundle git repository to $HOME/_vim
" git clone will create vimfiles folder inside $HOME/_vim
set rtp+=$HOME/_vim//vimfiles/bundle/Vundle.vim/

call vundle#begin('$HOME/_vim/vimfiles/bundle')

" Plugin to install plugins
Plugin 'gmarik/Vundle.vim'
" Solarized color theme for vim
Plugin 'altercation/vim-colors-solarized'
" status/tabline for vim
Plugin 'vim-airline/vim-airline'
" airline themes
Plugin 'vim-airline/vim-airline-themes'
" file/folder look up
Plugin 'ctrlpvim/ctrlp.vim'
" easy to use, file-type sensible comments
Plugin 'tomtom/tcomment_vim'
" provides insert mode auto-completion for quotes, parentheses, brackets...
Plugin 'Raimondi/delimitMate'
" git commands for vim
Plugin 'tpope/vim-fugitive'
" Show a diff via Vim sign column.
Plugin 'mhinz/vim-signify'
" rainbow parentheses
Plugin 'kien/rainbow_parentheses.vim'
" show vertical lines for each indent level (on space indented files)
Plugin 'Yggdroot/indentLine'
" quoting/parenthesizing made simple
Plugin 'tpope/vim-surround'
" Better whitespace highlighting for Vim
Plugin 'ntpeters/vim-better-whitespace'

call vundle#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" config: vim-colors-solarized
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark
colorscheme solarized

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" config: vim-airline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_solarized_bg='dark'
let g:airline_theme='wombat'
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" config: vim-signify
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:sifnify_vcs_list = ['git']
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" config: rainbow_parentheses.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

