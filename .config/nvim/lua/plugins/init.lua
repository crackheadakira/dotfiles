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
        'm4xshen/autoclose.nvim',
        config = function()
            require("autoclose").setup()
        end,
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
    },
    {
        "karb94/neoscroll.nvim",
        config = function()
            require('neoscroll').setup {}
        end
    }
}
