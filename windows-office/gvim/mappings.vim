" Disable arrow keys on normal mode
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>

" Easier windows navigation (when you split your workspace)
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" Vertical split
noremap <leader>v :vsplit<CR>

" fast write to buffer
noremap <leader>w :w<CR>

" Show whitespaces as characters. Useful to check mixed indentS
nnoremap <leader>l :set list!<cr>

" Disable word highlighting (specially after a search)
nnoremap <leader>h :nohl<cr>

" Remove trailing whitespaces
nnoremap <F5> :StripWhitespace<cr>
