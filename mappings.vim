" disable arrow keys on normal mode
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>

" vertical split
noremap <leader>v :vsplit<cr>

" easier windows navigation (when you split your workspace)
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

nnoremap <leader>l :set list!<cr>
set listchars=tab:▸\ ,eol:¬

nnoremap <leader>h :nohl<cr>
nnoremap <leader>w :w<cr>
