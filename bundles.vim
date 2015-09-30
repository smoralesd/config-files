" load Vundle. Manages all of the bundles.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugin to install plugins
Plugin 'gmarik/Vundle.vim'
" asynchronous build and test dispatcher
Plugin 'tpope/vim-dispatch'
" universal set of defaults
Plugin 'tpope/vim-sensible'
" code-completion engine for Vim
Plugin 'Valloric/YouCompleteMe'
" syntastic checker's runner
Plugin 'scrooloose/syntastic'
" git commands for vim
Plugin 'tpope/vim-fugitive'
" server-client service for C# stuff
Plugin 'nosami/Omnisharp'
" file/folder look up
Plugin 'kien/ctrlp.vim'
" CtrlP C matching extension
Plugin 'JazzCore/ctrlp-cmatcher'
" status/tabline for vim
Plugin 'bling/vim-airline'
" javascript editing support
Plugin 'marijnh/tern_for_vim'
" easy to use, file-type sensible comments
Plugin 'tomtom/tcomment_vim'
" solarized color theme for vim
Plugin 'altercation/vim-colors-solarized'
" YAJS.vim: Yet Another JavaScript Syntax for Vim
Plugin 'othree/yajs.vim'
" Syntax for JavaScript libraries
Plugin 'othree/javascript-libraries-syntax.vim'
" Vastly improved Javascript indentation and syntax support in Vim
Plugin 'pangloss/vim-javascript'
" Provide easy code formatting in Vim by integrating existing code formatters.
Plugin 'Chiel92/vim-autoformat'
" A Vim plugin for visually displaying indent levels in code
Plugin 'nathanaelkane/vim-indent-guides'
" quoting/parenthesizing made simple
Plugin 'tpope/vim-surround'
" Vim plugin, provides insert mode auto-completion for quotes, parens, brackets
Plugin 'Raimondi/delimitMate'
" Vim Jade template engine syntax highlighting and indention
Plugin 'digitaltoad/vim-jade'
" A Vim plugin which shows a git diff in the gutter (sign column) and stages/reverts hunks.
Plugin 'airblade/vim-gitgutter'
" Seamless navigation between tmux panes and vim splits
Plugin 'christoomey/vim-tmux-navigator'
" Simple tmux statusline generator with support for powerline symbols and statusline / airline / lightline integration
Plugin 'edkolev/tmuxline.vim'
" Vim python-mode. PyLint, Rope, Pydoc, breakpoints from box.
Bundle 'klen/python-mode'
" Vim plugin for the_silver_searcher, 'ag', a replacement for the Perl module / CLI script 'ack'
Bundle 'rking/ag.vim'
" UltiSnips - The ultimate snippet solution for Vim
Plugin 'sirver/ultisnips'

call vundle#end()

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

""""""""""""""""""""""""""""""""""""
" ultisnips configs
""""""""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger="<c-d>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-f>"
let g:UltiSnipsSnippetDirectories=["UltiSnips", "my_snippets"]

""""""""""""""""""""""""""""""""""""
" ag.vim configs
""""""""""""""""""""""""""""""""""""
let g:ag_working_path_mode="r"

""""""""""""""""""""""""""""""""""""
" syntastic configs
""""""""""""""""""""""""""""""""""""
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_auto_jump = 0

let g:syntastic_javascript_checkers = ['jscs', 'eslint']
let g:syntastic_javascript_jscs_args = '--max-errors -1'

let g:syntastic_cs_checkers = ['syntax', 'semantic', 'issues']
let g:syntastic_python_checkers = ['python']

""""""""""""""""""""""""""""""""""""
" YouCompleteMe configs
""""""""""""""""""""""""""""""""""""
" These are the tweaks I apply to YCM's config, you don't need them but they might help.
" YCM gives you popups and splits by default that some people might not
" like, so these should tidy it up a bit for you.
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0

""""""""""""""""""""""""""""""""""""
" Airline configs
""""""""""""""""""""""""""""""""""""
let &t_Co=16
let g:solarized_termcolors=16
let g:airline_solarized_bg='dark'
let g:airline_theme='wombat'
let g:airline_powerline_fonts = 1

""""""""""""""""""""""""""""""""""""
" ctrlP configs
""""""""""""""""""""""""""""""""""""
let g:ctrlp_max_files = 0
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
            \ --ignore .git
            \ --ignore .svn
            \ --ignore .hg
            \ --ignore .DS_Store
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

"""""""""""""""""""""""""""""""""""""
" Omnisharp specific configs
"""""""""""""""""""""""""""""""""""""
let g:OmniSharp_timeout = 5

"""""""""""""""""""""""""""""""""""""
" tmuxline specific configs
"""""""""""""""""""""""""""""""""""""
let g:tmuxline_powerline_separators = 0
let g:tmuxline_separators = {
    \ 'left' : '',
    \ 'left_alt': '>',
    \ 'right' : '',
    \ 'right_alt' : '<',
    \ 'space' : ' '}

"""""""""""""""""""""""""""""""""""""
" klen/python-mode specific configs
"""""""""""""""""""""""""""""""""""""
" disable rope autocompletion (let youcompleteme take care of that)
let g:pymode_rope = 0

" enable documentation access
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

" disable pymode syntax check (using syntastic for that)
let g:pymode_lint = 0
let g:pymode_lint_write = 0

" enable syntax highlight
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" disable code autofolding
let g:pymode_folding = 0

