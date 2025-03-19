return {
    "folke/zen-mode.nvim",
    opts = {
        window = {
            backdrop = 1, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
            -- height and width can be:
            -- * an absolute number of cells when > 1
            -- * a percentage of the width / height of the editor when <= 1
            -- * a function that returns the width or the height
            width = 0.8,
            height = 0.9,
            options = {
                signcolumn = "no",      -- disable signcolumn
                number = false,         -- disable number column
                relativenumber = false, -- disable relative numbers
                cursorline = false,     -- disable cursorline
                cursorcolumn = false,   -- disable cursor column
                -- foldcolumn = "0", -- disable fold column
                -- list = false, -- disable whitespace characters
            },
        },
        plugins = {
            options = {
                enabled = true,
                ruler = false,   -- disables the ruler text in the cmd line area
                showcmd = false, -- disables the command in the last line of the screen
                -- you may turn on/off statusline in zen mode by setting 'laststatus'
                -- statusline will be shown only if 'laststatus' == 3
                laststatus = 0, -- turn off the statusline in zen mode
            },
            twilight = { enabled = true },
            gitsigns = { enabled = true },
            tmux = { enabled = true },
            alacritty = {
                enabled = true,
                font = "12", -- font size
            },
        },
        on_open = function(_)
            vim.api.nvim_set_hl(0, "ZenBg", { bg = "NONE" })
            vim.opt.colorcolumn = "0";
            vim.cmd("Pencil");
        end,

        on_close = function()
            vim.cmd("NoPencil");
        end,
    }
}
