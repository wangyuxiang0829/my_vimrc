function! func#VisualStarSearch(cmdtype)
" store the previous content in register s in local variable temp
    let l:temp = @s
" copy the selected text into register s
    normal! gv"sy
" escape some sepcial characters and then set the search mode register /
    let @/ = '\V' . substitute(escape(@s, a:cmdtype . '\'), '\n', '\\n', 'g')
" restore the previous content of register s
    let @s = temp
endfunction
