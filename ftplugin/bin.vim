nnoremap <leader>/ :call Annotate()<CR>
inoremap <leader>add 0001
inoremap <leader>and 0101
inoremap <leader>br 0000
inoremap <leader>jmp 1100 000
inoremap <leader>ld 0010
inoremap <leader>ldi 1010
inoremap <leader>ldr 0110
inoremap <leader>lea 1110
inoremap <leader>not 1001
inoremap <leader>st 0011
inoremap <leader>sti 1011
inoremap <leader>str 0111
inoremap <leader>trap 1111 0000
inoremap <leader>r0 000
inoremap <leader>r1 001
inoremap <leader>r2 010
inoremap <leader>r3 011
inoremap <leader>r4 100
inoremap <leader>r5 101
inoremap <leader>r6 110
inoremap <leader>r7 111

function! Annotate()
    if match(getline('.'), ';') == -1
        execute "normal! mqI;\<Esc>`q"
    else
        execute "normal! mq^x`q"
    endif
endfunction

