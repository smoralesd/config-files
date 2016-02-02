" load Vundle manages all the bundles
set rtp+=$HOME/.vim/bundle/Vundle.vim

call vundle#begin()

""""""""""""""""""""  UNIVERSAL PLUGINS FIRST
" Plugin to install plugins
Plugin 'gmarik/Vundle.vim'
" file/folder look up
Plugin 'kien/ctrlp.vim'
" CtrlP C matching extension
Plugin 'JazzCore/ctrlp-cmatcher'
" status/tabline for vim
Plugin 'bling/vim-airline'
" Solarized color theme for vim
Plugin 'altercation/vim-colors-solarized'

call vundle#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" solarized config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let &t_Co=16
let g:solarized_termcolors=16
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
