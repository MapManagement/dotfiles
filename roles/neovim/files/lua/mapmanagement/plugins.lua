return require("packer").startup(function(use)

    use "wbthomason/packer.nvim"

    use {
            "nvim-tree/nvim-tree.lua",
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

    use { 
            "catppuccin/nvim",
            as = "catppuccin",
            config = function()
		    require("catppuccin").setup {
			highlight_overrides = {
				all = function(colors)
					return {
						LineNr = { fg = "#888888" },
					}
				end,
			},
			flavour = "mocha",
			transparent_background = true,
		}
		vim.api.nvim_command("colorscheme catppuccin")
		end,
	}

	use "hrsh7th/cmp-nvim-lsp"

	use {
			"hrsh7th/nvim-cmp",
			config = function()
				require "mapmanagement.plugins.nvim-cmp".init()
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

end)
