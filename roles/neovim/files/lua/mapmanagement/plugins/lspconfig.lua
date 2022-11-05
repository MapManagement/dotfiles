return function()
	local pid = vim.fn.getpid()
	local omnisharp_bin = "/home/jan/.local/bin/omnisharp/OmniSharp"
	local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

	require "lspconfig".omnisharp.setup {
		capabilities = capabilities,
		on_attach = on_attach,
		cmd = { 
			omnisharp_bin,
			"--languageserver",
			"--hostPID",
			tostring(pid)
		},
	}

	local on_attach = function(client, bufnr)
  		-- Enable completion triggered by <c-x><c-o>
  		vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
	end
end
