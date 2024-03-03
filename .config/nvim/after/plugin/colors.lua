vim.cmd.colorscheme "catppuccin"

require 'eyeliner'.setup {
    highlight_on_key = true,
    dim = true,
}

vim.api.nvim_set_hl(0, 'EyelinerPrimary', { bold = true, underline = true })
vim.api.nvim_set_hl(0, 'EyelinerSecondary', { underline = true })
