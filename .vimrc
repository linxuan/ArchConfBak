syntax on
set number
set norelativenumber
set cursorline
set wrap
set showcmd
set wildmenu

set hlsearch
set incsearch
set ignorecase
set smartcase
set scrolloff=5

map R :source $MYVIMRC<CR>
map S :w<CR>
map Q :x<CR>


call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'gcmt/wildfire.vim'
Plug 'connorholyday/vim-snazzy'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()

color snazzy
