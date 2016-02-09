
augroup base_group

    au!

    " highlight cword when cursor is moved (not mouse cursor, but actual text cursor)
    :au CursorMoved * exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))

    " enable rainbow parentheses at vim start
    au VimEnter * RainbowParenthesesToggle
    au Syntax * RainbowParenthesesLoadRound
    au Syntax * RainbowParenthesesLoadSquare
    au Syntax * RainbowParenthesesLoadBraces

augroup END
