return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local builtin = require('telescope.builtin')

        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Find file by string in filename" })
        vim.keymap.set('n', '<leader>ps', function()
            builtin.grep_string({ desc = "Idk", search = vim.fn.input("Grep > ") });
        end)
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = "Find string in files (lives)" });
    end

}
