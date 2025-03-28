return {
  "Zeioth/compiler.nvim",
  cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
  dependencies = { "stevearc/overseer.nvim", "nvim-telescope/telescope.nvim" },
  opts = {},
  config = function()
    vim.keymap.set("n", "<leader>co", "<cmd>CompilerOpen<cr>",
      { noremap = true, silent = true, desc = "Open compiler" })
    vim.keymap.set("n", "<leader>cr",
      "<cmd>CompilerStop<cr>" -- (Optional, to dispose all tasks before redo)
      .. "<cmd>CompilerRedo<cr>",
      { noremap = true, silent = true, desc = "Compiler redo last" })
    vim.keymap.set("n", "<leader>ct", "<cmd>CompilerToggleResults<cr>",
      { noremap = true, silent = true, desc = "Compiler toggle results" })
  end
}
