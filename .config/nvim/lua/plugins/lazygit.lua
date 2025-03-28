return {
  "kdheepak/lazygit.nvim",
  lazy = false,
  cmd = {
    "LazyGit",
    "LazyGitConfig",
    "LazyGitCurrentFile",
    "LazyGitFilter",
    "LazyGitFilterCurrentFile",
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    vim.keymap.set("n", "<leader>lg", "<CMD>LazyGit<CR>", { desc = "Open Lazygit" })
  end,
}
