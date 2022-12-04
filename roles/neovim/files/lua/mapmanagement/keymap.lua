-- Import map() function from utils and set options
local remap = require("mapmanagement.utils").map
local options = { silent = true, noremap = true }

-- leader key
vim.g.mapleader = " "

-- Toogle file tree (nvim-tree)
remap("n", "<leader>b", "<CMD>NvimTreeToggle<CR>", options)
