return {
    "preservim/vim-pencil",
    init = function()
        vim.g["pencil#wrapModeDefault"] = "soft";
        vim.g["pencil#textwidth"] = 200;
    end,
}
