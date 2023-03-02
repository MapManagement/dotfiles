-- ===== local variables =====
local pid           = vim.fn.getpid()
local omnisharp_bin = "/home/jan/.local/bin/omnisharp/OmniSharp"
local capabilities  = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
local opts          = { noremap = true, silent = true }

-- ===== LSP keymaps =====
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

local on_attach = function(client, bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
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

    -- ===== omnisharp specific keymaps =====
    vim.keymap.set('n', '<leader>nd', vim.lsp.buf.definition, bufopts)
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

-- ===== omnisharp =====
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
        omnisharp_bin,
        "--languageserver",
        "--hostPID",
        tostring(pid)
    }
}
-- ===== pyright configuration =====
require 'lspconfig'.pyright.setup {
    capabilities = capabilities,
    on_attach = on_attach
}

-- ===== rust-analyzer =====
require 'lspconfig'.rust_analyzer.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
        ["rust-analyzer"] = {
            imports = {
                granularity = {
                    group = "module",
                },
                prefix = "self",
            },
            cargo = {
                buildScripts = {
                    enable = true,
                },
            },
            procMacro = {
                enable = true
            },
        },
    }
}

-- ===== marksman =====
require 'lspconfig'.marksman.setup {
    on_attach = on_attach,
    capabilities = capabilities
}

-- ===== lua-language-server ====
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

-- ===== dockerfile-language-server =====
require 'lspconfig'.dockerls.setup {}

-- ===== lemminx =====
require 'lspconfig'.lemminx.setup {}

-- ===== sql-language-server =====
require 'lspconfig'.sqlls.setup {}
