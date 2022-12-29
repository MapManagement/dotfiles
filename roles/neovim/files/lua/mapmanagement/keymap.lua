-- leader key
vim.g.mapleader = " "

-- netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Toogle file tree (nvim-tree)
vim.keymap.set("n", "<leader>b", "<CMD>NvimTreeToggle<CR>")
