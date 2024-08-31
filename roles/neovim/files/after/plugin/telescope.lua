local builtin = require('telescope.builtin')

-- find file by string
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})

-- ?
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ")});
end)

-- find string in files (live)
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {});
