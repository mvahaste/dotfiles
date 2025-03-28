return {
  "Wansmer/treesj",
  lazy = true,
  event = "BufEnter",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  opts = {
    use_default_keymaps = false,
  },
  config = function()
    vim.keymap.set({ "n", "v" }, "<leader>m", "<CMD>TSJToggle<CR>", { desc = "Toggle Treesitter join" })
  end
}
