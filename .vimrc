
""For the plugin install
set nocompatible
set laststatus=2
call plug#begin()
set tabstop=4 shiftwidth=4 expandtab
""Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'julialang/julia-vim'
Plug 'altercation/vim-colors-solarized'
Plug 'jpalardy/vim-slime'
Plug 'tpope/vim-fugitive'
Plug 'ervandew/supertab'
call plug#end()

let g:airline_theme='solarized_flood'

"" For the solarized theme
syntax enable
"" Finding files
filetype plugin on
set path+=**
set wildmenu

set term=xterm-256color
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }
""Setting up vim-slime
let g:slime_target = "tmux"


""Turn off the trailing whitespace stuff in airline
let g:airline#extensions#whitespace#enabled = 0
set relativenumber

""Window navigation

nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
