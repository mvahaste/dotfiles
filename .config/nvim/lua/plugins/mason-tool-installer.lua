return {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  lazy = false,
  config = function()
    require("mason-tool-installer").setup {
      ensure_installed = {
        "prettierd",
        "html-lsp",
        "css-lsp",
        "json-lsp",
        "lua-language-server",
        "typescript-language-server",
        "tailwindcss-language-server",
        "vue-language-server",
        "taplo",
        "pyright",
        "clangd",
        "clang-format",
        "codelldb",
      },
      auto_update = true,
      run_on_start = true,
      start_delay = 3000,
    }
  end,
}
