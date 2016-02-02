" To activate, add the following to ~/.vimrc
" source $HOME/.vim/config.vim

" Make vim more useful. I think this drops vi compatibility.
" This allows vim to do a lot more and stray from it's roots.
set nocompatible
filetype off

source $HOME/.vim/bundles.vim

filetype plugin indent on

let mapleader="\<Space>"

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" enable cursor line highlighting
set cursorline
" enable line numbers
set number
" disable line wrapping
set nowrap

" set case sensitibility to search pattern
set ignorecase
set smartcase

set incsearch
set hlsearch

syntax enable
set nobackup
set noswapfile
set hidden
set encoding=utf-8

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

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

nnoremap <leader>v :vsplit<cr>

"Easier split navigation
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

noremap <F2> :SyntasticCheck<cr>
noremap <F3> :Autoformat<cr>
nnoremap <F4> :GundoToggle<cr>
nnoremap <F5> :%s/\s\+$//ge <bar> :%s/^(\t\+)\s\+//ge <cr>
nmap <F8> :TagbarToggle<cr>
nmap <F9> :set ignorecase! ignorecase?<cr>

" shortcut to rapidly toggle set list and see the invisible characters
nmap <leader>l :set list!<cr>
set listchars=tab:▸\ ,eol:¬

noremap <leader>l1 :lfirst<cr>
noremap [ :lprev<cr>
noremap ] :lnext<cr>

nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>h :nohl<cr>
nnoremap <leader>w :w<cr>

nnoremap <leader>tt :TernType<cr>

nnoremap <silent> <c-t> :CtrlPTag<cr>

augroup mygroup
    autocmd!
    autocmd QuickFixCmdPost *grep*      cwindow

    autocmd FileType        cs,javascript,python,c,cpp  nnoremap <buffer> <leader>af :Ag <cword><cr>
    autocmd FileType        cs,javascript,python,c,cpp  nnoremap <buffer> <leader>f :Ggrep <cword><cr>

    autocmd FileType        html        setlocal expandtab

    autocmd FileType        typescript  nnoremap <buffer> <leader>d :TsuDefinition<cr>z.
    autocmd FileType        typescript  nnoremap <buffer> <leader>fu :TsuReferences<cr>
    autocmd FileType        typescript  nnoremap <buffer> <leader>r :TsuRenameSymbol<cr>
    autocmd FileType        typescript  setlocal completeopt+=menu,preview
    autocmd FileType        typescript  nmap <buffer> <leader>t : <C-u>echo tsuquyomi#hint()<cr>
    autocmd FileType        typescript  setlocal omnifunc=tsuquyomi#complete

    autocmd Filetype        c,cpp,cs    nnoremap <buffer> <leader>d :YcmCompleter GoToDeclaration<cr>z.
    autocmd Filetype        c,cpp,cs    nnoremap <buffer> <leader>di :YcmCompleter GoToImplementationElseDeclaration<cr>
    autocmd FileType        cs          setlocal expandtab
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
    autocmd CursorHold      *.cs        call OmniSharp#TypeLookupWithoutDocumentation()

    autocmd FileType        javascript  setlocal expandtab
    autocmd FileType        javascript  nnoremap <buffer> <leader>d :TernDef<cr>z.
    autocmd FileType        javascript  nnoremap <buffer> <leader>fu :TernRefs<cr>
    autocmd FileType        javascript  nnoremap <buffer> <leader>ft :TernType<cr>
    autocmd FileType        javascript  nnoremap <buffer> <leader>dc :TernDoc<cr>
    autocmd FileType        javascript  nnoremap <buffer> <leader>r :TernRename<cr>
    autocmd FileType        javascript  call CustomJavascriptFold()
    autocmd FileType        javascript  setlocal omnifunc=tern#Complete

    autocmd FileType        python      setlocal expandtab modeline nowrap
    autocmd FileType        python      nnoremap <buffer> <leader>d :YcmCompleter GoToDeclaration <cr>

    autocmd FileType        json        nnoremap <buffer> <leader>r :%!python -m json.tool <cr> :%s/\s\+$//ge <bar> :%s/^(\t\+)\s\+//ge <cr>
augroup END

if !exists("g:ycm_semantic_triggers")
    let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FUNCTIONS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! CustomJavascriptFold()
    syntax region foldBraces start=/{/ end=/}/ transparent fold keepend extend
    setlocal foldmethod=marker
    setlocal foldmarker={,}
    setlocal foldlevel=99
    setlocal foldtext=CustomFoldText()
endfunction

function! CustomFoldText()
    "get first non-blank line
    let fs = v:foldstart
    while getline(fs) =~ '^\s*$' | let fs = nextnonblank(fs + 1)
    endwhile

    if fs > v:foldend
        let line = getline(v:foldstart)
    else
        let line = substitute(getline(fs), '\t', repeat(' ', &tabstop), 'g')
    endif

    let w = winwidth(0) - &foldcolumn - (&number ? 8 : 0)
    let foldSize = 1 + v:foldend - v:foldstart
    let foldSizeStr = " " . foldSize . " lines "
    let foldLevelStr = repeat('+--', v:foldlevel)
    let lineCount = line("$")
    let foldPercentage = printf("[%.1f", (foldSize * 1.0) / lineCount * 100) . "%] "
    let expansionString = repeat(".", w - strwidth(foldSizeStr . line . foldLevelStr . foldPercentage))
    return line . expansionString . foldSizeStr . foldPercentage . foldLevelStr
endfunction
