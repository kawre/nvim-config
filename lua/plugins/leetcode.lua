local leet_arg = "leetcode.nvim"

local M = {
    "kawre/leetcode.nvim",
    build = ":TSUpdate html",
    -- dependencies = { "nvim-treesitter", "telescope.nvim", "nui.nvim", "noice.nvim" },
    lazy = leet_arg ~= vim.fn.argv()[1],
    dev = true,
}

---@type lc.UserConfig
M.opts = {
    domain = "com",
    arg = leet_arg,
    lang = "java",
    sql = "oraclesql",
    debug = true,

    image_support = true,
}

M.keys = {
    { "<leader>lq", mode = { "n" }, "<cmd>Leet tabs<cr>" },
    { "<leader>lm", mode = { "n" }, "<cmd>Leet menu<cr>" },
    { "<leader>lc", mode = { "n" }, "<cmd>Leet console<cr>" },
    { "<leader>lh", mode = { "n" }, "<cmd>Leet info<cr>" },
    { "<leader>ll", mode = { "n" }, "<cmd>Leet lang<cr>" },
    { "<leader>ld", mode = { "n" }, "<cmd>Leet desc<cr>" },

    { "<leader>lr", mode = { "n" }, "<cmd>Leet run<cr>" },
    { "<leader>ls", mode = { "n" }, "<cmd>Leet submit<cr>" },
}

return M
