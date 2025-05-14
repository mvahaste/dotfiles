return {
  "windwp/nvim-ts-autotag",
  ft = {
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "vue",
    "html",
  },
  config = function()
    require("nvim-ts-autotag").setup()
  end,
}
