return {
    { 'nvim-telescope/telescope.nvim', tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim', lazy = true } },
    { "rose-pine/neovim", name = "rose-pine" },
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
    'jinh0/eyeliner.nvim',
}
