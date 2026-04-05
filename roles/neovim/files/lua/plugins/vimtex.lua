return {
    {
        "lervag/vimtex",
        ft = { "tex", "bib" },
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
        },
        config = function()
            vim.g.tex_flavor                  = "latex"
            vim.g.vimtex_compiler_method      = "latexmk"
            vim.g.vimtex_quickfix_mode        = 0
            vim.g.vimtex_fold_enabled         = 1

            vim.g.vimtex_compiler_latexmk     = {
                build_dir  = "",
                callback   = 1,
                continuous = 1,
                executable = "latexmk",
                options    = {
                    "-pdf",
                    "-interaction=nonstopmode",
                    "-synctex=1",
                },
            }

            vim.g.vimtex_view_method          = "okular"
            vim.g.vimtex_view_general_viewer  = "okular"
            vim.g.vimtex_view_general_options = [[--unique file:@pdf\#src:@line@tex]]

            vim.g.vimtex_toc_config           = {
                name = "TOC",
                split_width = 40,
            }

            vim.api.nvim_create_autocmd("FileType", {
                pattern = { "tex", "bib" },
                callback = function()
                    local opts = { buffer = true, noremap = true, silent = true }
                    vim.keymap.set("n", "<leader>lc", "<cmd>VimtexCompile<CR>", opts)
                    vim.keymap.set("n", "<leader>lv", "<cmd>VimtexView<CR>", opts)
                    vim.keymap.set("n", "<leader>lq", "<cmd>VimtexStop<CR>", opts)
                end,
            })
        end,
    }
}
