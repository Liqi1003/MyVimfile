nnoremap <leader>/ :call Annotate()<CR>
inoreabbrev immath from math import

function! Annotate()
    if match(getline('.'), '#') == -1
        execute "normal! mqI#\<Esc>`q"
    else
        execute "normal! mq^x`q"
    endif
endfunction

function! CompileRun()
    execute "w"
    execute "read !python %"
endfunction
