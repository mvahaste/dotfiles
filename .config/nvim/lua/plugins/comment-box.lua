return {
  "LudoPinelli/comment-box.nvim",
  lazy = true,
  event = "VeryLazy",
  config = function()
    vim.keymap.set("n", "<leader>cb", "<cmd>CBlcbox<cr>", { desc = "Comment Box" })
  end,
}
