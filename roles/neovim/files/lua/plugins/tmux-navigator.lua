return {
    "christoomey/vim-tmux-navigator",
    cmd = {
        "TmuxNavigateLeft",
        "TmuxNavigateDown",
        "TmuxNavigateUp",
        "TmuxNavigateRight",
        "TmuxNavigatePrevious",
    },
    keys = {
        { "<c-h>",  "<cmd><C-U>TmuxNavigateLeft<cr>",     desc = "Switch to left tmux pane" },
        { "<c-j>",  "<cmd><C-U>TmuxNavigateDown<cr>",     desc = "Switch to bottom tmux pane" },
        { "<c-k>",  "<cmd><C-U>TmuxNavigateUp<cr>",       desc = "Switch to upper tmux pane" },
        { "<c-l>",  "<cmd><C-U>TmuxNavigateRight<cr>",    desc = "Switch to right tmux pane" },
        { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>", desc = "Switch to previous tmux pane" },
    },
}
