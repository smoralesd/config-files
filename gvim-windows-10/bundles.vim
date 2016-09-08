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

