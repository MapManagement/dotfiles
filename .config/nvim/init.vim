call plug#begin()
    Plug 'preservim/nerdtree'
    Plug 'neoclide/coc.nvim', { 'branch': 'release' }
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'doums/darcula'
call plug#end()
    
colorscheme darcula
set termguicolors

set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
