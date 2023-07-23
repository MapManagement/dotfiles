require('nvim-treesitter.configs').setup {
	ensure_installed = {
		"bash",
		"lua",
		"rust",
		"c_sharp",
		"dockerfile",
		"latex",
		"markdown_inline",
		"python",
		"sql",
		"yaml",
        "cpp",
        "html",
        "json"
	},
  	auto_install = true,
  	highlight = {
    	enable = true,
        use_languagetree = true
  	},
	indent = {
		enable = true
	}
}
