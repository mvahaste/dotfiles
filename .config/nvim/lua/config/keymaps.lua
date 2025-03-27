-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Treesitter join
vim.keymap.set({ "n", "v" }, "<leader>m", "<CMD>TSJToggle<CR>", { desc = "Toggle Treesitter join" })
