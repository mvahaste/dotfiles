return {
  "rmagatti/alternate-toggler",
  lazy = true,
  event = "BufEnter",
  config = function()
    vim.keymap.set("n", "<leader>i", "<CMD>ToggleAlternate<CR>", { desc = "Toggle boolean" })
  end,
}
