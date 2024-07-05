return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require "catppuccin".setup {
                flavour = "mocha"
            }
        end,
    },
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim', lazy = true }
    },
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
    'jinh0/eyeliner.nvim',
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
    },
    {
        "karb94/neoscroll.nvim",
        config = function()
            require('neoscroll').setup {}
        end
    },
    {
        'ellisonleao/glow.nvim',
        config = true,
        cmd = "Glow"
    },
    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {},
    },
    {
        "S1M0N38/love2d.nvim",
        cmd = "LoveRun",
        opts = {},
        keys = {
            { "<leader>v", desc = "LÖVE" },
            { "<leader>vv", "<cmd>LoveRun<cr>", desc = "Run LÖVE" },
            { "<leader>vs", "<cmd>LoveStop<cr>", desc = "Stop LÖVE" },
        },
    },
    'sammce/fleeting.nvim',
}
