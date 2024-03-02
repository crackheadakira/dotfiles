function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	-- Remove BG from colorscheme
	-- vim.api.nvim_set_hl(0, "Normal")
	-- vim.api.nvim_set_hl(0, "NormalFloat")
end

ColorMyPencils()

require'eyeliner'.setup {
    highlight_on_key = true,
    dim = true,
}

vim.api.nvim_set_hl(0, 'EyelinerPrimary', { bold = true, underline = true })
vim.api.nvim_set_hl(0, 'EyelinerSecondary', { underline = true })
