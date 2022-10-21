return require("packer").startup(function(use)

    use "wbthomason/packer.nvim"

    use {
            "nvim-tree/nvim-tree.lua",
            requires = { "nvim-tree/nvim-web-devicons" }
    }

    use {
			"neoclide/coc.nvim",
			branch = "release"
	}

    use "nvim-lua/plenary.nvim"

    use {
            "nvim-telescope/telescope.nvim",
            tag = "0.1.0",
            requires = { "nvim-lua/plenary.nvim" }
    }

    use "vim-airline/vim-airline"
    use "vim-airline/vim-airline-themes"

    use "OmniSharp/omnisharp-vim"

    use { 
            "catppuccin/nvim",
            as = "catppuccin",
            config = function()
                    vim.g.catppuccin_flavour = "mocha"
                    require("catppuccin").setup()
            end
    }

end)
