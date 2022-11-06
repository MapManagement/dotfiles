local function init()

	-- ===== local variables =====
	local pid = vim.fn.getpid()
	local omnisharp_bin = "/home/jan/.local/bin/omnisharp/OmniSharp"
	local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

	local on_attach = function(client, bufnr)
  		vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
	end

	-- ===== omnisharp configuration =====
	require'lspconfig'.omnisharp.setup {
		capabilities = capabilities,
		on_attach = on_attach,
		cmd = { 
			omnisharp_bin,
			"--languageserver",
			"--hostPID",
			tostring(pid)
		},
	}
	-- ===== pyright configuration =====
	require'lspconfig'.pyright.setup {
		capabilities = capabilities,
		on_attach = on_attach
	}

	-- ===== rust-analyzer configuration =====
	require'lspconfig'.rust_analyzer.setup {
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
end

return {
	init = init
}
