" load Vundle manages all the bundles
set rtp+=$HOME/.vim/bundle/Vundle.vim

call vundle#begin()

"""""""""""""""""""""""""""""""""""""""""" UNIVERSAL PLUGINS FIRST
" Plugin to install plugins
Plugin 'gmarik/Vundle.vim'

" file/folder look up
Plugin 'ctrlpvim/ctrlp.vim'

" git commands for vim
Plugin 'tpope/vim-fugitive'

" Show a diff via Vim sign column.
Plugin 'mhinz/vim-signify'

" quoting/parenthesizing made simple
Plugin 'tpope/vim-surround'


"""""""""""" TYPESCRIPT PLUGINS
" Yet Another TypeScript Syntax: The most advanced TypeScript Syntax Highlighting in Vim
Plugin 'HerringtonDarkholme/yats.vim'

" A Vim plugin for TypeScript
Plugin 'Quramy/tsuquyomi'

call vundle#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" signify config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:signify_vcs_list = [ 'git' ]

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CtrlP config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_max_files = 0

let g:ctrlp_custom_ignore = {
            \ 'dir':    '\v[\/]\.(git|hg|svn)$',
            \ 'file':   '\v\.(exe|so|dll)$',
            \ }

