return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" },

        config = function()
            local configs = require("nvim-treesitter.configs")
            configs.setup({
                ensure_installed = {
                    "bash",
                    "lua",
                    "rust",
                    "c_sharp",
                    "dockerfile",
                    "latex",
                    "python",
                    "sql",
                    "yaml",
                    "cpp",
                    "html",
                    "json",
                    "markdown",
                    "markdown_inline",
                },
                ignore_install = {
                },
                modules = {
                },
                auto_install = true,
                sync_install = false,

                indent = { enable = true },
                highlight = {
                    enable = true,
                    use_languagetree = true
                },
            })
        end,

    }
}
