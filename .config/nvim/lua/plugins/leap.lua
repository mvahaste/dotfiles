return {
  "ggandor/leap.nvim",
  lazy = false,
  config = function()
    vim.api.nvim_set_hl(0, "LeapBackdrop", { link = "Comment" })
  end,
}
