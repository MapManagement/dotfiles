local builtin = require('telescope.builtin')

-- find file by string
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})

-- find git file by string
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

-- ?
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ")});
end)

-- find string in files (live)
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {});
