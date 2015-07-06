" load Vundle. Manages all of the bundles.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-sensible'
Plugin 'Valloric/YouCompleteMe'
Plugin 'nosami/Omnisharp'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'marijnh/tern_for_vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'altercation/vim-colors-solarized'

Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Raimondi/delimitMate'
Plugin 'digitaltoad/vim-jade'
Plugin 'airblade/vim-gitgutter'

Plugin 'christoomey/vim-tmux-navigator'
Plugin 'edkolev/tmuxline.vim'
Bundle 'klen/python-mode'

call vundle#end()

let g:syntastic_check_on_open=1
let g:syntastic_always_populate_loc_list = 1

let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_javascript_jshint_args = '--config /Users/smorales/.jshintrc'

let g:syntastic_cs_checkers = ['syntax', 'semantic', 'issues']

let g:syntastic_python_checkers = ['python']

" These are the tweaks I apply to YCM's config, you don't need them but they might help.
" YCM gives you popups and splits by default that some people might not
" like, so these should tidy it up a bit for you.
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0

let &t_Co=16
let g:solarized_termcolors=16
let g:airline_solarized_bg='dark'
let g:airline_theme='wombat'

let g:ctrlp_max_files = 0
let g:ctrlp_custom_ignore = {
  \ 'dir':	'\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }

" Omnisharp specific configs
let g:OmniSharp_timeout = 5

let g:tmuxline_powerline_separators = 0
let g:tmuxline_separators = {
    \ 'left' : '',
    \ 'left_alt': '>',
    \ 'right' : '',
    \ 'right_alt' : '<',
    \ 'space' : ' '}

" Config for klen/python-mode
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

