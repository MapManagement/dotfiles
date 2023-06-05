# Neovim Guide

## Plugins

- plugin manager: [packer.nvim](https://github.com/wbthomason/packer.nvim)
- lua functions: [plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- extendable fuzzy finder: [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- statusline: [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- awesome icons: [Nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)
- completion engine: [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
    - LSP completion: [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
    - buffer word completion: [cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
    - filesystem path completion: [cmp-path](https://github.com/hrsh7th/cmp-path)
    - CLI completion: [cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline)
    - snippet completion: [cmp-vsnip](https://github.com/hrsh7th/cmp-vsnip/blob/main/README.md)
    - another snippet completion: [vim-vsnip](https://github.com/hrsh7th/vim-vsnip)
- extended code highlighting: [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- theme: [Catppuccin for Neovim](https://github.com/catppuccin/nvim)
- browser markdown preview: [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)
- indentation highlighting:
[indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- undo history: [undotree](https://github.com/mbbill/undotree)
- Git integration: [vim-fugitive](https://github.com/tpope/vim-fugitive)
- manage LSP servers: [mason.nvim](https://github.com/williamboman/mason.nvim)
- better .NET support:
[omnisharp-extended-lsp.nvim](https://github.com/Hoffs/omnisharp-extended-lsp.nvim)
- buffers in tabs: [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- move between files fast: [harpoon](https://github.com/ThePrimeagen/harpoon)
- LaTex editing: [VimTeX](https://github.com/lervag/vimtex)
- save your sessions automatically: [auto-session](https://github.com/rmagatti/auto-session)

## Keymaps

### Default

- leader = ``<space\>``
- netrw = ``<leader\>pv``
- next buffer = ``<C-n\>``
- previous buffer = ``<C-p\>``
- close buffer = ``<leader\>c``

### Plugins

#### LSP

- open diagonstics = ``<space\>e``
- previous diagnostics = ``[d``
- next diagnostics = ``]d``
- set local diagnostics = ``<space\>q``

- format code = ``<leader>f``
- jump to declaration = ``gD``
- jump to definition = ``gd`` / ``nd``
- show definition = ``K``
- shows all implementations = ``gi``
- show signature information = ``<C-k\>``
- add folder to workspace = ``<space\>wa``
- remove folder from workspace = ``<space\>wr``
- list workspace folders = ``<space\>wl``
- jump to definition of type = ``<space\>D``
- rename = ``<space>rn``
- shows all references = ``gr``
- format code = ``<space\>f``

#### Fugitive

- show git = ``<leader\>g``

#### Harpoon

- add file = ``<leader\>a``
- toggle menu = ``<C-e\>``
- first file = ``<leader\>1``
- second file = ``<leader\>2``
- third file = ``<leader\>3``
- fourht file = ``<leader\>4``

#### CMP

- next item = ``<Tab\>``
- previous item = ``<Tab\>``
- confirm item = ``<CR\>``

#### Telescope

- find files = ``<leader\>ff``
- find only Git files = ``<C-p\>``
- grep string in file = ``<leader\>ps``
- live grep = ``<leader\>fg``

#### Undotree

- toggle undotree = ``<leader\>u``

#### DAP

- start/continue debugging = ``<F5>``
- step over = ``<F10>``
- step into = ``<F11>``
- step out = ``<F12>``
- toggle breakpoint = ``<leader\>b``
- open repl = ``<leader\>dr``
- run last = ``<leader\>dl``

#### VimTex

- localleader key = ``<space>``
