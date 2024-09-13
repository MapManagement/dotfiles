-- leader key
vim.g.mapleader = " "

-- netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- buffer switching
vim.keymap.set("n", "<C-n>", "<CMD>bnext<CR>", { noremap = false })
vim.keymap.set("n", "<C-p>", "<CMD>bprevious<CR>", { noremap = false })
vim.keymap.set("n", "<leader>c", "<CMD>bd<CR>", { noremap = false })

-- goodbye arrow keys
vim.keymap.set("n", "<Up>", "<Nop>")
vim.keymap.set("n", "<Down>", "<Nop>")
vim.keymap.set("n", "<Left>", "<Nop>")
vim.keymap.set("n", "<Right>", "<Nop>")

vim.keymap.set("i", "<Up>", "<Nop>")
vim.keymap.set("i", "<Down>", "<Nop>")
vim.keymap.set("i", "<Left>", "<Nop>")
vim.keymap.set("i", "<Right>", "<Nop>")
