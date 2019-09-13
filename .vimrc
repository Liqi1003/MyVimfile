"Last modified: 2018/5/2

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
    set guifont=Monospace\ 16
    colorscheme solarized
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
set softtabstop=2
set shiftwidth=2
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

".bin files support
autocmd BufNewFile,BufRead *.bin execute "set filetype=bin"

"Fast way of modifying _vimrc
nnoremap <leader>ev :vsplit ~/.vimrc<CR>
nnoremap <leader>sv :source ~/.vimrc<CR>

""""""""""""""""""""""""""""""""""""
