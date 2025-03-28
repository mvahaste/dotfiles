return {
  "JoosepAlviste/nvim-ts-context-commentstring",
  lazy = true,
  event = { "BufReadPost" },
  config = function()
    require("ts_context_commentstring").setup {
      enable_autocmd = false,
    }
  end,
}
