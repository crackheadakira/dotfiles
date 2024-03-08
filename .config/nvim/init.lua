-- NVim keybinds
vim.g.mapleader = " " -- Space as leader key
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- NVim config
vim.o.number = true         -- Show line number
vim.o.relativenumber = true -- Show relative line number
vim.o.signcolumn = "number" -- No idea honestly
vim.o.tabstop = 4           -- A TAB character looks like 4 spaces
vim.o.expandtab = true      -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 4       -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 4        -- Number of spaces inserted when indenting

-- Install & Initialize lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins")
