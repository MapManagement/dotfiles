local function init()
	require('nvim-treesitter.configs').setup {
  		ensure_installed = {
			"bash",
			"lua",
			"rust",
			"c_sharp",
			"dockerfile",
			"latex",
			"markdown",
			"python",
			"sql",
			"yaml"
		},
  		auto_install = true,
  		highlight = {
    		enable = true
  		},
		indent = {
			enable = true
		}
	}
end

return {
	init = init
}
