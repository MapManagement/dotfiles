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
        markdown = true,
        gitsigns = true,
        harpoon = true,
        mason = true,
        telescope = {
            enabled = true,
        },
        dap = {
            enabled = true,
            enabled_ui = true,
        },
        indent_blankline = {
            enabled = true,
        },
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
            inlay_hints = {
                background = true,
            },
        }
    },
    flavour = "mocha",
    transparent_background = false,
}
