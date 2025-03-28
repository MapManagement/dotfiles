return {
    "NeogitOrg/neogit",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "sindrets/diffview.nvim",
        "nvim-telescope/telescope.nvim",
    },
    config = true,
    keys = {
        { "<leader>gi", "<cmd>Neogit<cr>", desc = "Open Neogit window" }
    }
}
