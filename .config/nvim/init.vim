set number  
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set mouse=a

call plug#begin()
    Plug 'preservim/nerdtree'
    Plug 'neoclide/coc.nvim', { 'branch': 'release' }
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'vim-airline/vim-airline'
    Plug 'OmniSharp/omnisharp-vim'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'doums/darcula'
call plug#end()

set termguicolors
colorscheme darcula    

inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

let g:OmniSharp_server_use_mono = 1
