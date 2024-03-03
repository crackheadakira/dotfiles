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
        keys = { "n", "<leader>fc" },
        cat = "commander"
    }
})
