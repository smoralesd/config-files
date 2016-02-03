" load Vundle manages all the bundles
set rtp+=$HOME/.vim/bundle/Vundle.vim

call vundle#begin()

"""""""""""""""""""""""""""""""""""""""""" UNIVERSAL PLUGINS FIRST
" Plugin to install plugins
Plugin 'gmarik/Vundle.vim'
" file/folder look up
Plugin 'ctrlpvim/ctrlp.vim'
" CtrlP C matching extension - needs to compile component
Plugin 'JazzCore/ctrlp-cmatcher'
" status/tabline for vim
Plugin 'vim-airline/vim-airline'
" airline themes
Plugin 'vim-airline/vim-airline-themes'
" Solarized color theme for vim
Plugin 'altercation/vim-colors-solarized'
" easy to use, file-type sensible comments
Plugin 'tomtom/tcomment_vim'
" provides insert mode auto-completion for quotes, parenthesis, brackets...
Plugin 'Raimondi/delimitMate'

call vundle#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" solarized config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark
colorscheme solarized

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" airline config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_solarized_bg='dark'
let g:airline_theme='wombat'
let g:airline_powerline_fonts = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctrlP config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_max_files = 0
" ag is an external program, search for silver searcher
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
            \ --ignore .git
            \ --ignore .svn
            \ --ignore .hg
            \ --ignore .DS_Store
            \ --ignore "*.json"
            \ --ignore "*.jmx"
            \ --ignore "*.txt"
            \ --ignore "*.png"
            \ --ignore "*.unity"
            \ --ignore "*.meta"
            \ --ignore "*.prefab"
            \ --ignore "**/*.pyc"
            \ --ignore "node_modules"
            \ -g ""'

 let g:ctrlp_custom_ignore = {
            \ 'dir':	'\v[\/]\.(git|hg|svn)$',
            \ 'file': '\v\.(exe|so|dll)$',
            \ }

 let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }

