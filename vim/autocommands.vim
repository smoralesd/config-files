
augroup base_group

    au!

    " orange in insert mode, red in command mode
    " if you want to use rgb color formatting:
    " konsoleprofile CustomCursorColor=#255255255
    au VimEnter * silent !konsoleprofile UseCustomCursorColor=1
    let &t_SI = "\<Esc>]50;CustomCursorColor=orange;BlinkingCursorEnabled=1\x7"
    let &t_EI = "\<Esc>]50;CustomCursorColor=red;BlinkingCursorEnabled=0\x7"
    silent !konsoleprofile CustomCursorColor=red
    au VimLeave * silent !konsoleprofile CustomCursorColor=gray;BlinkingCursorEnabled=0

    " load rainbow parentheses at vim start
    au Syntax * RainbowParenthesesLoadRound
    au Syntax * RainbowParenthesesLoadSquare
    au Syntax * RainbowParenthesesLoadBraces

    au FileType java setlocal omnifunc=javacomplete#Complete

augroup END

