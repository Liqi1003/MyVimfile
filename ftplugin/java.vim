nnoremap <leader>/ :call Annotate()<CR>
nnoremap <leader>; :call AddColon()<CR>
inoremap { {<CR>}<Esc>O
inoremap <leader>{ {}<Esc>i
iabbrev main public static void main(String[] args)<CR>{
iabbrev setm public void set()<CR>{
iabbrev getI public int get()<CR>{return this.
iabbrev getS public String get()<CR>{return this.

function! AddColon()
    execute "normal! mqA;\<Esc>`q"
endfunction

function! Annotate()
    if match(getline('.'), '//') == -1
        execute "normal! mqI//\<Esc>`q"
    else
        execute "normal! mq^2x`q"
    endif
endfunction

function! CompileRun()
    execute "w"
    execute "!javac %"
    execute "!java %<"
endfunction

