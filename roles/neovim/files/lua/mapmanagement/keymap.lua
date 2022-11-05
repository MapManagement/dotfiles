-- Import map() function from utils and set options
local remap = require("mapmanagement.utils").map
local options = { silent = true, noremap = true, expr = true, replace_keycodes = false }

-- Map submit action of CoC to "ENTER" key
--remap("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], options)

