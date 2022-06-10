
" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif


""For the plugin install
set nocompatible
set laststatus=2
call plug#begin()
set tabstop=4 shiftwidth=4 expandtab
""Plug 'sheerun/vim-polyglot'
Plug 'arcticicestudio/nord-vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'julialang/julia-vim'
Plug 'altercation/vim-colors-solarized'
Plug 'jpalardy/vim-slime'
Plug 'tpope/vim-fugitive'
Plug 'ervandew/supertab'
Plug 'christoomey/vim-tmux-navigator'
call plug#end()

colorscheme nord

let g:airline_theme='nord'

"" For the solarized theme
syntax enable
"" Finding files
filetype plugin on
set path+=**
set wildmenu
set term=xterm-256color
set background=dark
""The below  option is need for nord-vim sometimes
if exists('+termguicolors')
        set termguicolors
    endif

"let g:solarized_termcolors=256
"let g:solarized_contrast='high'
"colorscheme solarized

let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }

""Setting up vim-slime
let g:slime_target = "tmux"


""Turn off the trailing whitespace stuff in airline
let g:airline#extensions#whitespace#enabled = 0
set relativenumber

""Window navigation

""nnoremap <C-H> <C-W>h
""nnoremap <C-J> <C-W>j
""nnoremap <C-K> <C-W>k
"nnoremap <C-L> <C-W>l
