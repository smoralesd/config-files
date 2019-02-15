" Disable arrow keys on normal mode
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>

" Vertical split
noremap <leader>v :vsplit<cr>

" Easier windows navigation (when you split your workspace)
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" lclose => close location window
" pc => close preview  window
nnoremap <silent> <leader>c :lclose <bar> pc <cr>

" Show whitespaces as characters. Useful to check mixed indentS
nnoremap <leader>l :set list!<cr>
set listchars=tab:▸\ ,eol:¬

" Disable word highlighting (specially after a search)
nnoremap <leader>h :nohl<cr>

" fast write to buffer
nnoremap <leader>w :w<cr>

" Remove trailing whitespaces
nnoremap <F5> :StripWhitespace<cr>

"""""""" Tsuquyomi custom mappings
nnoremap <S-F12> :TsuquyomiReferences<cr>
nnoremap <F12> :TsuquyomiDefinition<cr>zz
nnoremap <A-F12> :TsuquyimoTypeDefinition<cr>
nnoremap <leader><Left> :TsuquyomiGoBack<cr>
nnoremap <F2> :TsuquyomiRenameSymbol<cr>
inoremap <leader>s :TsuquyomiSignatureHelp<cr>
nnoremap <leader>s :TsuquyomiSignatureHelp<cr>
