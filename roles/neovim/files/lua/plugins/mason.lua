return {
    {
        "williamboman/mason.nvim",
        opts = {}
    },
    {
        "williamboman/mason-lspconfig.nvim",
        opts = {
            automatic_installation = true,
            ensure_installed = {
                "omnisharp",
                "jedi_language_server",
                "rust_analyzer",
                "marksman",
                "lua_ls",
                "dockerls",
                "docker_compose_language_service",
                "lemminx",
                "sqlls",
                "ansiblels",
                "clangd",
            }
        }
    },
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        opts = {
            ensure_installed = {
                "clang-format"
            },
            run_on_start = true,
            auto_update = true
        }
    }
}
