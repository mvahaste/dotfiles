return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      "vim",
      "vimdoc",
      "bash",
      "lua",
      "python",
      "html",
      "css",
      "json",
      "toml",
      "javascript",
      "typescript",
      "tsx",
      "markdown",
      "markdown_inline",
    },
  },
}
