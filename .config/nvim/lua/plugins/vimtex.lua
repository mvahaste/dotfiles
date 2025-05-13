return {
  "lervag/vimtex",
  lazy = false, -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- VimTeX configuration goes here, e.g.
    vim.g.vimtex_view_method = "skim"
    -- map <leader>lc to compile
    vim.keymap.set("n", "<leader>lc", "<Plug>(vimtex-compile)", { desc = "Compile LaTeX" })
    -- clean up files after compilation
    vim.g.vimtex_compiler_clean_paths = {
      "aux",
      "bbl",
      "bcf",
      "blg",
      "idx",
      "ilg",
      "ind",
      "lof",
      "log",
      "out",
      "pdfsync",
      "run.xml",
      "toc",
    }
    -- don't open/close automatically
    vim.g.vimtex_quickfix_mode = 0
  end,
}
