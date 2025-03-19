return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            { "mason.nvim" },
            { "williamboman/mason-lspconfig.nvim", config = function() end },
            { "hrsh7th/nvim-cmp" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "hrsh7th/cmp-path" },
            { "hrsh7th/cmp-cmdline" },
            { "hrsh7th/cmp-vsnip" },
            { "hrsh7th/vim-vsnip" },
            { "hrsh7th/cmp-buffer" },
            { "onsails/lspkind.nvim" },
            { "Hoffs/omnisharp-extended-lsp.nvim" },
        },
        config = function()
            -- ===== local variables =====
            local pid          = vim.fn.getpid()
            local cmp          = require("cmp")
            local lspkind      = require("lspkind")
            local cmp_lsp      = require("cmp_nvim_lsp")
            local capabilities = vim.tbl_deep_extend(
                "force",

                {},
                vim.lsp.protocol.make_client_capabilities(),
                cmp_lsp.default_capabilities())
            local opts         = { noremap = true, silent = true }

            -- ===== Completion =====
            cmp.setup {
                mapping = {
                    ['<Tab>'] = cmp.mapping.select_next_item(),
                    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
                    ['<CR>'] = cmp.mapping.confirm({
                        behavior = cmp.ConfirmBehavior.Replace,
                        select = true,
                    })
                },
                sources = {
                    { name = 'nvim_lsp' },
                    { name = "luasnip" },
                    { name = "nvim_lua" },
                    { name = "path" },
                    { name = "vsnip" },
                },
                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered(),
                },
                snippet = {
                    expand = function(args)
                        vim.fn["vsnip#anonymous"](args.body)
                    end,
                },
                formatting = {
                    format = lspkind.cmp_format({
                        mode = 'symbol',       -- show only symbol annotations
                        maxwidth = 50,         -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
                        ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)
                    })
                }
            }

            -- ===== LSP keymaps =====
            vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
            vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
            vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
            vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

            local on_attach = function(client, bufnr)
                client.server_capabilities.semanticTokensProvider = false
                local bufopts = { noremap = true, silent = true, buffer = bufnr }
                vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
                vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
                vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
                vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
                vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
                vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
                vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
                vim.keymap.set('n', '<space>wl', function()
                    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
                end, bufopts)
                vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
                vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
                vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
                vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
                vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
            end

            -- ===== hover window configuration =====
            vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
                vim.lsp.handlers.hover,
                {
                    border = "rounded", -- "shadow" , "none", "rounded"
                    -- border = border
                    -- width = 100,
                }
            )

            -- ===== diagnostic options =====
            vim.diagnostic.config({

                virtual_text = true,
                signs = true,
                underline = true,
                update_in_insert = true,
                severity_sort = false,
            })

            local signs = { Error = "", Warn = "", Hint = "", Info = "" }
            for type, icon in pairs(signs) do
                local hl = "DiagnosticSign" .. type
                vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
            end

            -- ===== Rust / rust-tools =====
            -- managed by rustacean plugin

            -- ===== C# /Omnisharp =====
            require 'lspconfig'.omnisharp.setup {
                capabilities = capabilities,
                on_attach = on_attach,
                enable_editorconfig_support = true,
                enable_roslyn_analyzers = false,
                enable_import_completion = true,

                handlers = {
                    ["textDocument/definition"] = require('omnisharp_extended').handler
                },
                cmd = {
                    "omnisharp",

                    "--languageserver",
                    "--hostPID",
                    tostring(pid)
                }
            }

            -- ===== Python / Jedi =====
            require 'lspconfig'.jedi_language_server.setup {
                capabilities = capabilities,
                on_attach = on_attach
            }

            -- ===== Markdown / Marksman =====
            require 'lspconfig'.marksman.setup {
                on_attach = on_attach,
                capabilities = capabilities

            }

            -- ===== Lua ====
            require 'lspconfig'.lua_ls.setup {
                settings = {

                    Lua = {
                        runtime = {
                            version = 'LuaJIT',
                        },
                        diagnostics = {

                            globals = { 'vim' },
                        },
                        workspace = {
                            library = vim.api.nvim_get_runtime_file("", true),
                        },
                        telemetry = {
                            enable = false,
                        },
                    },
                },
            }

            -- ===== Docker =====
            require 'lspconfig'.dockerls.setup {}
            require 'lspconfig'.docker_compose_language_service.setup {}

            -- ===== lemminx =====
            require 'lspconfig'.lemminx.setup {}

            -- ===== SQL =====
            require 'lspconfig'.sqlls.setup {}

            -- ===== Ansible =====
            require 'lspconfig'.ansiblels.setup {}

            -- ===== C++ =====
            require 'lspconfig'.clangd.setup {
                on_attach = on_attach,
                capabilities = capabilities
            }
        end,
    }
}
