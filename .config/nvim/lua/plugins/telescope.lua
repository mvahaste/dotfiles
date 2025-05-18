return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-ui-select.nvim",
  },
  config = function()
    -- This is your opts table
    require("telescope").setup {
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown {},
        },
      },
    }
    require("telescope").load_extension "ui-select"
    vim.keymap.set("n", "<leader>fs", function()
      require("telescope.builtin").lsp_document_symbols {
        symbols = {
          "class",
          "variable",
          "constant",
          "function",
          "method",
          "constructor",
          "module",
          "interface",
          "enum",
          "namespace",
          "struct",
        },
      }
    end, { desc = "telescope document symbols" })
    vim.keymap.set("n", "<leader>fS", function()
      require("telescope.builtin").lsp_workspace_symbols {
        symbols = {
          "class",
          "variable",
          "constant",
          "function",
          "method",
          "constructor",
          "module",
          "interface",
          "enum",
          "namespace",
          "struct",
        },
      }
    end, { desc = "telescope workspace symbols" })
  end,
}
