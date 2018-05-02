<<<<<<< HEAD
"Last modified: 2018/3/15
""""""""""""""""""""""""""""""""""""
"System Settings
source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
behave mswin
syntax enable

""""""""""""""""""""""""""""""""""""
"Plugins
set nocp
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Supertab'
Plugin 'Solarized'
Plugin 'scrooloose/nerdtree'

call vundle#end()
filetype plugin indent on

"Nerdtree
map <F3> :NERDTreeToggle<CR>

"SuperTab
let g:SuperTabRetainCompletionType=2
""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""
"Colorscheme
syntax enable
if has('gui_running')
    set guioptions-=T "Toolbar
    set guioptions-=m "Menu
    set guioptions-=L "Leftbar
    set t_Co=256
    let g:solarized_termcolors=16
    let g:solarized_termtrans=1
    let g:solarized_contrast='normal'
    let g:solarized_visibility='normal'
    set background=dark
    set guifont=Lucida_Console:h16
    colorscheme NeoSolarized
else
    colorscheme desert
endif
""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""
"Basic Settings
set number
set ruler
set cindent
set smartindent
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set nobackup
set noswapfile
set noundofile
set wildmenu
set noeb t_vb=
set linebreak
noremap j gj
noremap k gk

""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""
"Auto Complete
let mapleader = ","
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
inoremap ( ()<Esc>i
inoremap ) <c-r>=ClosePair(')')<CR>
inoremap [ []<Esc>i
inoremap ] <c-r>=ClosePair(']')<CR>

function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
	return "\<Right>"
    else
	return a:char
    endif
endfunction

""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""
"For convinience~
nnoremap <leader>p "+p
vnoremap <leader>y "+y
nnoremap <leader>y mqggvG"+y`q

"One-key Compilerun
nnoremap <F10> :call CompileRun()<CR>
function! CompileRun()
    execute "w"
    if &filetype == 'c'
	execute "!gcc % -o %<"
	execute "! %<"
    elseif &filetype == 'java'
	execute "!javac % -d ../class"
	execute "!java %<"
    elseif &filetype == 'python'
        execute "read !python %"
    endif
endfunction

"Different filetypes
autocmd BufNewFile,Bufread *.c execute ":call C()"
function! C()
    nnoremap <leader>/ :call CJAnnotate()<CR>
    nnoremap <leader>; :call AddColon()<CR>
    inoremap { {<CR>}<Esc>O
    inoremap <leader>{ {}<Esc>i
    iabbrev main int main(void)<CR>{
    inoreabbrev inio #include<stdio.h>
    inoreabbrev inmath #include<math.h>
endfunction

autocmd BufNewFile,Bufread *.java execute ":call Java()"
function! Java()
    nnoremap <leader>/ :call CJAnnotate()<CR>
    nnoremap <leader>; :call AddColon()<CR>
    inoremap { {<CR>}<Esc>O
    inoremap <leader>{ {}<Esc>i
    iabbrev main public static void main(String[] args)<CR>{
    iabbrev setm public void set()<CR>{
    iabbrev getI public int get()<CR>{return this.
    iabbrev getS public String get()<CR>{return this.
endfunction

autocmd BufNewFile,BufRead *.py execute ":call Python()"
function! Python()
    nnoremap <leader>/ :call PAnnotate()<CR>
    inoreabbrev immath from math import
endfunction


function! AddColon()
    execute "normal! mqA;\<Esc>`q"
endfunction

function! CJAnnotate()
    if match(getline('.'), '//') == -1
        execute "normal! mqI//\<Esc>`q"
    else
        execute "normal! mq^2x`q"
    endif
endfunction

function! PAnnotate()
    if match(getline('.'), '#') == -1
        execute "normal! mqI#\<Esc>`q"
    else
        execute "normal! mq^x`q"
    endif
endfunction

"Fast way of modifying _vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

""""""""""""""""""""""""""""""""""""
=======
"Last modified: 2018/5/1
""""""""""""""""""""""""""""""""""""
"System Settings
source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
behave mswin
syntax enable

""""""""""""""""""""""""""""""""""""
"Plugins
set nocp
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Supertab'
Plugin 'Solarized'
Plugin 'scrooloose/nerdtree'

call vundle#end()
filetype plugin indent on

"Nerdtree
map <F3> :NERDTreeToggle<CR>

"SuperTab
let g:SuperTabRetainCompletionType=2
""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""
"Colorscheme
syntax enable
if has('gui_running')
    set guioptions-=T "Toolbar
    set guioptions-=m "Menu
    set guioptions-=L "Leftbar
    set t_Co=256
    let g:solarized_termcolors=16
    let g:solarized_termtrans=1
    let g:solarized_contrast='normal'
    let g:solarized_visibility='normal'
    set background=dark
    set guifont=Lucida_Console:h16
    colorscheme Solarized
else
    colorscheme desert
endif
""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""
"Basic Settings
set number
set ruler
set cindent
set smartindent
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set nobackup
set noswapfile
set noundofile
set wildmenu
set noeb t_vb=
set linebreak
noremap j gj
noremap k gk

""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""
"Auto Complete
let mapleader = ","
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
inoremap ( ()<Esc>i
inoremap ) <c-r>=ClosePair(')')<CR>
inoremap [ []<Esc>i
inoremap ] <c-r>=ClosePair(']')<CR>

function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endfunction

""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""
"For convinience~
nnoremap <leader>p "+p
vnoremap <leader>y "+y
nnoremap <leader>y mqggvG$"+y`q

"One-key Compilerun
nnoremap <F10> :call CompileRun()<CR>

autocmd BufNewFile,BufRead *.bin execute "set filetype=bin"

"Fast way of modifying _vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

""""""""""""""""""""""""""""""""""""
>>>>>>> 0ca60fecb91ace338388abf94839c761cfc5e129
