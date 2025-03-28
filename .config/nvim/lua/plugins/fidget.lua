return {
  "j-hui/fidget.nvim",
  lazy = false,
  config = function()
    require("fidget").setup({
      notification = {
        window = {
          border = "rounded",
          align = "top",
          winblend = 0,
        },
      },
    })
  end,
}
