return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre',
    opts = require "configs.conform",
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    lazy = false,
    config = function()
      require("mason-tool-installer").setup {
        ensure_installed = {
          "css-lsp",
          "html-lsp",
          "json-lsp",
          "typescript-language-server",
          "tailwindcss-language-server",
          "vls",
          "lua-language-server",
          "eslint-lsp",
          "prettierd",
        },
        auto_update = true,
        run_on_start = true,
        start_delay = 3000,
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
      },
    },
  },
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
    keys = {
      { "<leader>lg", "<CMD>LazyGit<CR>", desc = "LazyGit" },
    },
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "rmagatti/alternate-toggler",
    lazy = true,
    event = "BufEnter",
  },
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
    "OXY2DEV/markview.nvim",
    lazy = false,
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
  },
  {
    "tpope/vim-surround",
    lazy = true,
    event = "BufEnter",
  },
  {
    "Wansmer/treesj",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    keys = {
      {
        "<leader>m",
        "<CMD>TSJToggle<CR>",
        desc = "Toggle Treesitter Join",
        mode = { "n", "v" },
      },
    },
    opts = {
      use_default_keymaps = false,
    },
  },
  {
    "RRethy/vim-illuminate",
    lazy = true,
    event = "BufEnter",
  },
  {
    "rcarriga/nvim-notify",
    keys = {
      {
        "<leader>nd",
        function()
          require("notify").dismiss({ silent = true, pending = true })
        end,
        desc = "Dismiss notifications",
      },
      {
        "<leader>nh",
        "<CMD>Telescope notify<CR>",
        desc = "View notification history",
      },
    },
    opts = {
      background_colour = "#000000",
      timeout = 3000,
    },
    init = function()
      vim.notify = require("notify")
    end,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = function()
      require("ibl").setup()
    end
  },
  {
    "xiyaowong/telescope-emoji.nvim",
    keys = {
      {
        "<leader>te",
        "<CMD>Telescope emoji<CR>",
        desc = "Telescope emoji",
      }
    },
    config = function()
      require("telescope").load_extension("emoji")
    end,
  },
  {
    "hrsh7th/nvim-cmp",
  },
  {
    "Exafunction/codeium.nvim",
    event = "BufEnter",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    config = function()
      require("codeium").setup {
        virtual_text = {
          enabled = true,
        },
      }
    end,
  },
}
