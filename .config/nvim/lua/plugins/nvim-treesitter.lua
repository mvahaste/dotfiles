return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    require("nvim-treesitter.configs").setup {
      highlight = {
        disable = { "latex" },
      },
    }
  end,
  opts = {
    ensure_installed = {
      "vim",
      "lua",
      "vimdoc",
      "html",
      "css",
      "javascript",
      "typescript",
      "tsx",
      "vue",
      "markdown",
      "markdown_inline",
      "json",
      "toml",
      "latex",
      "bash",
      "python",
      "cpp",
      "typst",
    },
  },
}
