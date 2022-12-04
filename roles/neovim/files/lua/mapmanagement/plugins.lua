return require("packer").startup(function(use)

    use "wbthomason/packer.nvim"

    use {
		"nvim-tree/nvim-tree.lua",
		config = function()
			require "mapmanagement.plugins.nvim-tree".init()
		end,
        requires = { "nvim-tree/nvim-web-devicons" }
    }

    use "nvim-lua/plenary.nvim"

    use {
		"nvim-telescope/telescope.nvim",
        tag = "0.1.0",
        requires = { "nvim-lua/plenary.nvim" }
	}

    use "vim-airline/vim-airline"
    use "vim-airline/vim-airline-themes"

    
	use "hrsh7th/cmp-nvim-lsp"

	use {
		"hrsh7th/nvim-cmp",
		config = function()
			require "mapmanagement.plugins.nvim-cmp".init()
		end
	}

	use {
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
		config = function()
			require "mapmanagement.plugins.nvim-treesitter".init()
		end
	}

	use "hrsh7th/cmp-buffer"
	use "hrsh7th/cmp-path"
	use "hrsh7th/cmp-cmdline"
	use "hrsh7th/cmp-vsnip"
	use "hrsh7th/vim-vsnip"

	use {
		"neovim/nvim-lspconfig",
		config = function()
			require "mapmanagement.plugins.lspconfig".init()
		end
	}

	use { 
        "catppuccin/nvim",
        as = "catppuccin",
        config = function()
			require "mapmanagement.plugins.catppuccin".init()
		end
	}

	use({
		"iamcco/markdown-preview.nvim",
		run = function() vim.fn["mkdp#util#install"]() end,
	})

	use({
		"iamcco/markdown-preview.nvim",
		run = "cd app && npm install",
		setup = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	})

end)
