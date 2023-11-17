return require("packer").startup(function(use)
    use("wbthomason/packer.nvim")

    use("nvim-lua/plenary.nvim")

    use {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.0",
        requires = { "nvim-lua/plenary.nvim" }
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use {
        "nvim-treesitter/nvim-treesitter",
        run = function()
            local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
            ts_update()
        end
    }

    -- ==== autocompletion ==== --
    use {
        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/cmp-vsnip",
        "hrsh7th/vim-vsnip",
        "onsails/lspkind.nvim"
    }

    -- ==== mason and LSP ==== --
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        "neovim/nvim-lspconfig",
        "Hoffs/omnisharp-extended-lsp.nvim"
    }

    use {
        "catppuccin/nvim",
        as = "catppuccin",
        config = function()
            vim.cmd('colorscheme catppuccin')
        end
    }

    use {
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    }

    use("lukas-reineke/indent-blankline.nvim")
    use("mbbill/undotree")

    -- ==== git ==== --
    use("tpope/vim-fugitive")
    use("lewis6991/gitsigns.nvim")

    -- manage buffers
    use("nvim-tree/nvim-web-devicons")
    use {
        'akinsho/bufferline.nvim',
        tag = "v3.*",
        requires = 'nvim-tree/nvim-web-devicons'
    }
    use("ThePrimeagen/harpoon")

    -- ==== debugging ==== --
    use("mfussenegger/nvim-dap")
    use("theHamsta/nvim-dap-virtual-text")
    use {
        "rcarriga/nvim-dap-ui",
        requires = { "mfussenegger/nvim-dap" }
    }

    -- ==== rust ==== --
    use ("simrat39/rust-tools.nvim")
    use {
        "rust-lang/rust.vim",
        ft = "rust",
        init = function()
            vim.g.rustfmt_autosave = 1
        end
    }
    use {
        "saecki/crates.nvim",
        ft = { "rust", "toml" },
        config = function(_, opts)
            local crates = require("crates")
            crates.setup(opts)
            crates.show()
        end
    }

    use("rmagatti/auto-session")

    use("lervag/vimtex")

    use("christoomey/vim-tmux-navigator")
end)
