" activate, add the following to ~/.vimrc
" source $HOME/.vim/config.vim

" Make vim more useful. I think this drops vi compatibility.
" This allows vim to do a lot more and stray from it's roots.
set nocompatible

filetype off

source $HOME/.vim/bundles.vim

filetype plugin indent on

source $HOME/.vim/settings.vim

source $HOME/.vim/autocommands.vim

source $HOME/.vim/mappings.vim

