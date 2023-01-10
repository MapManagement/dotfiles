-- leader key
vim.g.mapleader = " "

-- netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- toggle file tree (nvim-tree)
vim.keymap.set("n", "<leader>b", "<CMD>NvimTreeToggle<CR>")

-- format code
vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)
