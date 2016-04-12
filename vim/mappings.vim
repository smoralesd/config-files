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

" Show whitespaces as characters. Useful to check mixed indentS
nnoremap <leader>l :set list!<cr>
set listchars=tab:▸\ ,eol:¬

" Disable word highlighting (specially after a search)
nnoremap <leader>h :nohl<cr>

" fast write to buffer
nnoremap <leader>w :w<cr>

" Toggle Raindow Parentheses
nnoremap <F2> :RainbowParenthesesToggle<cr>
" Remove trailing whitespaces
nnoremap <F5> :%s/\s\+$//ge <bar> :%s/^(\t\+)\s\+//ge <cr>

" copy visual selection to x11 clipboard (needs xclip to be installed)
vnoremap <silent> <C-c> :%w !xclip -i -sel c<cr><cr>

" paste from x11 clipboard (needs xclip to be installed)
nnoremap <silent> <C-v> :r !xclip -o -sel -c<cr>

