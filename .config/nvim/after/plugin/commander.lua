local commander = require("commander")

commander.add({
    {
        desc = "Search inside current buffer",
        cmd = "<CMD>Telescope current_buffer_fuzzy_find<CR>",
        keys = { "n", "<leader>fl" },
        cat = "telescope"
    },
    {
        desc = "Find files",
        cmd = "<CMD>Telescope find_files<CR>",
        keys = { "n", "<leader>pf" },
        cat = "telescope"
    },
    {
        desc = "Show Git files",
        cmd = "<CMD>Telescope git_files<CR>",
        keys = { "n", "<C-p>" },
        cat = "telescope"
    },
    {
        desc = "Open commander",
        cmd = "<CMD>Telescope commander<CR>",
        keys = { "n", "<leader>er" },
        cat = "commander"
    },
    {
        desc = "Enable/disable Copilot suggestions",
        cmd = require("copilot.suggestion").toggle_auto_trigger,
        keys = { "n", "<leader>ww" },
        cat = "copilot"
    }
})
