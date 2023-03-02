require("catppuccin").setup {
	highlight_overrides = {
		all = function(colors)
			return {
				LineNr = { fg = "#888888" },
			}
		end,
	},
	integrations = {
		cmp = true,
		treesitter = true,
		telescope = true,
		markdown = true,
		native_lsp = {
			enabled = true,
			virtual_text = {
                errors = { "italic" },
		        hints = { "italic" },
        		warnings = { "italic" },
                information = { "italic" },
            },
            underlines = {
                errors = { "underline" },
                hints = { "underline" },
                warnings = { "underline" },
    			information = { "underline" },
			},
		}
	},
	flavour = "mocha",
	transparent_background = false,
}