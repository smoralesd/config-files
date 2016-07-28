" load Vundle manages all the bundles
set rtp+=$HOME/.vim/bundle/Vundle.vim

call vundle#begin()

"""""""""""""""""""""""""""""""""""""""""" UNIVERSAL PLUGINS FIRST
" Plugin to install plugins
Plugin 'gmarik/Vundle.vim'
" dispatch.vim: asynchronous build and test dispatcher
Plugin 'tpope/vim-dispatch'
" Syntax checking hacks for vim
Plugin 'scrooloose/syntastic'
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
" provides insert mode auto-completion for quotes, parentheses, brackets...
Plugin 'Raimondi/delimitMate'
" git commands for vim
Plugin 'tpope/vim-fugitive'
" Show a diff via Vim sign column.
Plugin 'mhinz/vim-signify'
" code-completion engine for Vim
Plugin 'Valloric/YouCompleteMe'
" rainbow parentheses
Plugin 'kien/rainbow_parentheses.vim'
" show vertical lines for each indent level (on space indented files)
Plugin 'Yggdroot/indentLine'
" provide easy code formatting in Vim by integrating existing code formatters
Plugin 'Chiel92/vim-autoformat'
" quoting/parenthesizing made simple
Plugin 'tpope/vim-surround'
" Vim plugin for the_silver_searcher (ag)
" Plugin 'rking/ag.vim'
" bronson/vim-trailing-whitespace
Plugin 'ntpeters/vim-better-whitespace'

"""""""""""""""""""""""""""""""""""""""""" JSON FILES
" A better JSON for Vim: distinct highlighting of keywords vs values,
" JSON-specific (non-JS) warnings, quote concealing. Pathogen-friendly.
Plugin 'elzr/vim-json'

"""""""""""""""""""""""""""""""""""""""""" JAVASCRIPT FILES
" javascript editing support
" Plugin 'marijnh/tern_for_vim'

"""""""""""""""""""""""""""""""""""""""""" JAVA FILES
"omni completion for java (maven support included)
" Plugin 'artur-shaik/vim-javacomplete2'

"""""""""""""""""""""""""""""""""""""""""" PLANTUML FILES
" vim syntax file for plant uml
" Plugin 'aklt/plantuml-syntax'

call vundle#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" signify config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:signify_vcs_list = [ 'git' ]

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ag.vim config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ag_working_path_mode="r"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-json config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vim_json_syntax_conceal = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" rainbow parentheses config
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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" solarized config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark
colorscheme solarized

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" YouCompleteMe config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_key_invoke_completion = '<C-Space>'
let g:EclimCompletionMethod = 'omnifunc'

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
            \ 'dir':    '\v[\/]\.(git|hg|svn)$',
            \ 'file':   '\v\.(exe|so|dll)$',
            \ }

let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }

