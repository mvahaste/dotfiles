return {
  "folke/snacks.nvim",
  friority = 2500,
  lazy = false,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    lazygit = { enabled = true },
    gitbrowse = { enabled = true },
    bigfile = { enabled = true },
    -- dashboard = { enabled = true },
    -- explorer = { enabled = true },
    -- indent = { enabled = true },
    input = { enabled = true },
    -- picker = { enabled = true },
    notifier = { enabled = true },
    quickfile = { enabled = true },
    scope = { enabled = true },
    scroll = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
  },
  config = function()
    ---@diagnostic disable-next-line: undefined-global
    vim.keymap.set("n", "<leader>lg", function() Snacks.lazygit.open(opts) end, { desc = "Open Lazygit" })
    ---@diagnostic disable-next-line: undefined-global
    vim.keymap.set("n", "<leader>gb", function() Snacks.gitbrowse() end, { desc = "Gitbrowse" })
    ---@diagnostic disable-next-line: undefined-global
    vim.keymap.set("n", "<leader>nh", function() Snacks.notifier.show_history() end, { desc = "Notifier history" })
  end
}
