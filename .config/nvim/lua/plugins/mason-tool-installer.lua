return {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  lazy = false,
  config = function()
    require("mason-tool-installer").setup {
      ensure_installed = {
        "html-lsp",
        "css-lsp",
        "json-lsp",
        "taplo",
        "pyright",
        "black",
        "isort",
        "pylint",
        "lua-language-server",
        "typescript-language-server",
        "tailwindcss-language-server",
        "prettierd",
      },
      auto_update = true,
      run_on_start = true,
      start_delay = 3000,
    }
  end,
}
