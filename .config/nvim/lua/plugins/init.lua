return {
  -- LSP and Code Formatting
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
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
      },
    },
  },
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = require "configs.conform",
  },
  {
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
          "eslint-lsp",
          "taplo",
        },
        auto_update = true,
        run_on_start = true,
        start_delay = 3000,
      }
    end,
  },

  -- Debugging
  {
    "folke/trouble.nvim",
    opts = {},
    cmd = "Trouble",
  },

  -- Git Integration
  {
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },

  -- Navigation
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "ggandor/leap.nvim",
    lazy = false,
  },

  -- Editing Enhancements
  {
    "JoosepAlviste/nvim-ts-context-commentstring",
    lazy = true,
    event = { "BufReadPost" },
    config = function()
      require("ts_context_commentstring").setup {
        enable_autocmd = false,
      }
    end,
  },
  {
    "numToStr/Comment.nvim",
    lazy = true,
    event = { "BufReadPost" },
    config = function()
      require("Comment").setup {
        pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
      }
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    ft = {
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
      "html",
    },
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "tpope/vim-surround",
    lazy = true,
    event = "BufEnter",
  },
  {
    "rmagatti/alternate-toggler",
    lazy = true,
    event = "BufEnter",
  },
  {
    "RRethy/vim-illuminate",
    lazy = true,
    event = "BufEnter",
    config = function()
      require("illuminate").configure {
        delay = 1000,
      }
    end,
  },
  {
    "Wansmer/treesj",
    lazy = true,
    event = "BufEnter",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    opts = {
      use_default_keymaps = false,
    },
  },

  -- Miscellaneous
  {
    "xiyaowong/telescope-emoji.nvim",
    keys = {
      {
        "<leader>te",
        "<CMD>Telescope emoji<CR>",
        desc = "Telescope emoji",
      },
    },
    config = function()
      require("telescope").load_extension "emoji"
    end,
  },
  {
    "zbirenbaum/copilot.lua",
    lazy = true,
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup {
        suggestion = {
          auto_trigger = true,
        },
      }
    end,
  },
  {
    "tadmccorkle/markdown.nvim",
    ft = "markdown",
  },
  {
    "OXY2DEV/markview.nvim",
    ft = "markdown",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons"
    },
  },
  {
    "ellisonleao/glow.nvim",
    cmd = "Glow",
    config = function()
      require("glow").setup {
        install_path = "opt/homebrew/bin/glow",
        width = 999,
        height = 999,
        width_ratio = 0.85,
        height_ratio = 0.85,
        border = "rounded",
      }
    end,
  },
  {
    "Aasim-A/scrollEOF.nvim",
    event = { "CursorMoved", "WinScrolled" },
    config = function()
      require("scrollEOF").setup()
    end,
  }
}
