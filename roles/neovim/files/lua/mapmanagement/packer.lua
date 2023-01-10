return require("packer").startup(function(use)

    use("wbthomason/packer.nvim")

    use {
        "nvim-tree/nvim-tree.lua",
        requires = { "nvim-tree/nvim-web-devicons" }
    }

    use("nvim-lua/plenary.nvim")

    use {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.0",
        requires = { "nvim-lua/plenary.nvim" }
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use("hrsh7th/cmp-nvim-lsp")

    use("hrsh7th/nvim-cmp")

    use {
        "nvim-treesitter/nvim-treesitter",
        run = function()
            local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
            ts_update()
        end
    }

    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-path")
    use("hrsh7th/cmp-cmdline")
    use("hrsh7th/cmp-vsnip")
    use("hrsh7th/vim-vsnip")

    use("neovim/nvim-lspconfig")

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
    use("tpope/vim-fugitive")

    use("williamboman/mason.nvim")
    use("Hoffs/omnisharp-extended-lsp.nvim")

end)
