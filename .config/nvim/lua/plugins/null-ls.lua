return {
  "nvimtools/none-ls.nvim",
  ft = { "python" },
  config = function()
    local null_ls = require "null-ls"

    null_ls.setup {
      sources = {
        null_ls.builtins.diagnostics.pylint.with {
          extra_args = { "--disable", "c0114,c0115,c0116,c0301,w1203,w0703" },
        },
        null_ls.builtins.formatting.isort,
      },
    }
  end,
}
