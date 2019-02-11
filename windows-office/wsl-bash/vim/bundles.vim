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

" Solarized color theme for vim
Plugin 'altercation/vim-colors-solarized'

" status/tabline for vim
Plugin 'vim-airline/vim-airline'

" airline themes
Plugin 'vim-airline/vim-airline-themes'

" easy to use, file-type sensible comments
Plugin 'tomtom/tcomment_vim'

" provides insert mode auto-completion for quotes, parentheses, brackets...
Plugin 'Raimondi/delimitMate'

" code-completion engine for Vim
Plugin 'Valloric/YouCompleteMe'

" show vertical lines for each indent level (on space indented files)
Plugin 'Yggdroot/indentLine'

" Better whitespace highlighting for Vim
Plugin 'ntpeters/vim-better-whitespace'

" A Vim plugin for Prettier
Plugin 'prettier/vim-prettier'

" Toggles between hybrid and absolute line numbers automatically
Plugin 'jeffkreeftmeijer/vim-numbertoggle'



"""""""""""" TYPESCRIPT PLUGINS
" Yet Another TypeScript Syntax The most advanced TypeScript Syntax Highlighting in Vim
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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" YouCompleteMe config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_key_invoke_completion = '<C-Space>'

