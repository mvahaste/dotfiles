return {
  "christoomey/vim-tmux-navigator",
  lazy = false,
  config = function()
    vim.keymap.set("n", "<C-l>", "<CMD> TmuxNavigateRight<CR>", { desc = "Window right" })
    vim.keymap.set("n", "<C-j>", "<CMD> TmuxNavigateDown<CR>", { desc = "Window down" })
    vim.keymap.set("n", "<C-k>", "<CMD> TmuxNavigateUp<CR>", { desc = "Window up" })
    vim.keymap.set("n", "<C-h>", "<CMD> TmuxNavigateLeft<CR>", { desc = "Window left" })
  end
}
