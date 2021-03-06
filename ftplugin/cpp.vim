nnoremap <leader>/ :call Annotate()<CR>
nnoremap <leader>; :call AddColon()<CR>
inoremap { {<CR>}<Esc>O
inoremap <leader>{ {}<Esc>i
iabbrev main int main(void)<CR>{
inoreabbrev inio #include <iostream>
inoreabbrev inmath #include <cmath>

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
  execute "!g++ % -o %<"
  execute "! ./%<"
endfunction

