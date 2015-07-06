" To activate, add the following to ~/.vimrc
" source $HOME/.vim/config.vim

" Make vim more useful. I think this drops vi compatibility.
" This allows vim to do a lot more and stray from it's roots.
set nocompatible
filetype off

source $HOME/.vim/bundles.vim

filetype plugin indent on

let mapleader="-"

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set number
set nobackup
set noswapfile
set hidden
set encoding=utf-8

syntax enable

set background=dark
colorscheme solarized

set laststatus=2
set clipboard=unnamed
set updatetime=500
set splitbelow
set completeopt-=preview

set omnifunc=syntaxcomplete#Complete

set wildignore+=*.psd,*.png,*.jpg,*.gif,*.jpeg,*.tga,*.tiff
set wildignore+=*.avi,*.mp4,*.wav,*.mp3,*.flac,*.ogg
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*.eot,*.eol,*.ttf,*.otf,*.afm,*.ffil,*.fon,*.pfm,*.pfb,*.woff,*.svg,*.std,*.pro,*.xsf
set wildignore+=*.fbx,*.mdl,*.pyc
set wildignore+=*.mat,*.unity,*.prefab,*.meta,*.unityproj,*.anim
set wildignore+=*.mdb,*.sln,*.csproj,*.userprefs,*.pidb,*.unityproj
set wildignore+=.git,.DS_Store,*.exe,*.so,*.dll,*.obj,*.db
set wildignore+=Temp,Library

" Remove 'Press Enter to continue' message when type information is longer than one line.
set cmdheight=2

nnoremap <leader>v :vsplit<cr>

"Easier split navigation
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

nnoremap <F5> :%s/\s\+$//ge <bar> :%s/^(\t\+)\s\+//ge <cr>

augroup mygroup
    autocmd!
    autocmd QuickFixCmdPost *grep*      cwindow
    autocmd FileType        cs          set expandtab smartindent smarttab
    autocmd Filetype        c,cpp,cs    nnoremap <buffer> <leader>d :YcmCompleter GoToDeclaration<cr>
    autocmd Filetype        c,cpp,cs    nnoremap <buffer> <leader>di :YcmCompleter GoToImplementationElseDeclaration<cr>

    autocmd Filetype        cs          nnoremap <buffer> <leader>fi :OmniSharpFindImplementations<cr>
    autocmd Filetype        cs          nnoremap <buffer> <leader>ft :OmniSharpFindType<cr>
    autocmd Filetype        cs          nnoremap <buffer> <leader>fs :OmniSharpFindSymbol<cr>
    autocmd FileType        cs          nnoremap <buffer> <leader>fu :OmniSharpFindUsages<cr>
    autocmd FileType        cs          nnoremap <buffer> <leader>fm :OmniSharpFindMembers<cr>
    autocmd FileType        cs          nnoremap <buffer> <leader>r :OmniSharpRename<cr>
    autocmd FileType        cs          nnoremap <buffer> <leader>dc :OmniSharpDocumentation<cr>
    autocmd FileType        cs          nnoremap <buffer> <leader><space> :OmniSharpGetCodeActions<cr>
    autocmd FileType        cs          vnoremap <buffer> <leader><space> :call OmniSharp#GetCodeActions('visual')<cr>
    autocmd FileType        cs          nnoremap <buffer> <leader>b :OmniSharpBuildAsync<cr>
    autocmd FileType        cs          nnoremap <leader>rl :OmniSharpReloadSolution<cr>
    autocmd FileType        cs          nnoremap <leader>th :OmniSharpHighlightTypes<cr>
    autocmd CursorHold      cs          call OmniSharp#TypeLookupWithoutDocumentation()

    autocmd FileType        cs          nnoremap <buffer> <leader>f :Ggrep <cword><cr>

    autocmd FileType        javascript  set expandtab
    autocmd FileType        javascript  nnoremap <buffer> <leader>d :TernDef <cr>
    autocmd FileType        javascript  nnoremap <buffer> <leader>fu :TernRefs<cr>
    autocmd FileType        javascript  nnoremap <buffer> <leader>ft :TernType<cr>
    autocmd FileType        javascript  nnoremap <buffer> <leader>dc :TernDoc<cr>
    autocmd FileType        javascript  nnoremap <buffer> <leader>r :TernRename<cr>
    autocmd FileType        javascript  nnoremap <buffer> <leader>f :Ggrep <cword><cr>

    autocmd FileType        python      set expandtab modeline nowrap
    autocmd FileType        python      nnoremap <buffer> <leader>d :YcmCompleter GoToDeclaration <cr>
    " autocmd FileType        python      exec "normal zR"

    autocmd FileType        json        nnoremap <buffer> <leader>r :%!python -m json.tool <cr> :%s/\s\+$//ge <bar> :%s/^(\t\+)\s\+//ge <cr>
augroup END

"filetype plugin on
"set runtimepath^=~/.vim/bundle/ctrlp.vim

