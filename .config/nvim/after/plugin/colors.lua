require 'eyeliner'.setup {
    highlight_on_key = true,
    dim = true,
}

vim.api.nvim_set_hl(0, 'EyelinerPrimary', { bold = true, underline = true })
vim.api.nvim_set_hl(0, 'EyelinerSecondary', { underline = true })

local colors = {
    bg = "#d4ccb9",
    fg = "#45363b",
    cursor = "#45363b",
    selection_bg = "#958b83",
    selection_fg = "#d4ccb9",
    black = "#20111a",
    bright_black = "#5e5252",
    red = "#bd100d",
    green = "#858062",
    yellow = "#e9a448",
    blue = "#416978",
    orange = "#96522b",
    gray = "#98999c",
    white = "#958b83",
    bright_white = "#d4ccb9",
}

vim.cmd("highlight Normal guibg=" .. colors.bg .. " guifg=" .. colors.fg)
vim.cmd("highlight EndOfBuffer guibg=" .. colors.bg .. " guifg=" .. colors.fg)

vim.cmd("highlight Constant guifg=" .. colors.white)
vim.cmd("highlight Identifier guifg=" .. colors.blue)
vim.cmd("highlight Statement guifg=" .. colors.blue)
vim.cmd("highlight PreProc guifg=" .. colors.green)
vim.cmd("highlight Type guifg=" .. colors.blue)
vim.cmd("highlight Special guifg=" .. colors.white)
vim.cmd("highlight Underlined guifg=" .. colors.blue)
vim.cmd("highlight Error guifg=" .. colors.red .. " guibg=" .. colors.white)
vim.cmd("highlight Todo guifg=" .. colors.orange .. " guibg=" .. colors.white)
