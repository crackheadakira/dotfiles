local commander = require("commander")

commander.add({
    {
        desc = "Search inside current buffer",
        cmd = "<CMD>Telescope current_buffer_fuzzy_find<CR>",
        keys = { "n", "<leader>fl" },
    },
    {
        desc = "Find files",
        cmd = "<CMD>Telescope find_files<CR>",
        keys = { "n", "<leader>pf" }
    },
    {
        desc = "Show Git files",
        cmd = "<CMD>Telescope git_files<CR>",
        keys = { "n", "<C-p>" }
    }
})
