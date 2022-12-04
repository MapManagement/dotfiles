local function init()
	require "nvim-tree".setup({
		sort_by = "case_sensititve",
		open_on_setup = true,
		view = {
			adaptive_size = true,
			mappings = {
				list = {
					{ key = "u", action = "dir_up" },
				},
			},
		},
		renderer = {
			group_empty = true,
		},
		filters = {
			dotfiles = true,
		}
	})
end

return {
	init = init
}
