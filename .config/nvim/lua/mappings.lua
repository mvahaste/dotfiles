require "nvchad.mappings"

-- Command Mode Shortcut
vim.keymap.set("n", ";", ":", { desc = "CMD enter command mode" })
vim.keymap.set("i", "jk", "<ESC>")

-- vim-tmux-navigator
vim.keymap.set("n", "<C-l>", "<CMD> TmuxNavigateRight<CR>", { desc = "Window right" })
vim.keymap.set("n", "<C-j>", "<CMD> TmuxNavigateDown<CR>", { desc = "Window down" })
vim.keymap.set("n", "<C-k>", "<CMD> TmuxNavigateUp<CR>", { desc = "Window up" })
vim.keymap.set("n", "<C-h>", "<CMD> TmuxNavigateLeft<CR>", { desc = "Window left" })

-- Move Lines in Visual Mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Line Join with Cursor Restore
vim.keymap.set("n", "J", "mzJ`z")

-- Scroll Keeping Cursor Centered
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Search Keeping Cursor Centered
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Save Shortcut
vim.keymap.set({ "n", "i", "v" }, "<C-s>", "<CMD> w <CR>")

-- Toggle Boolean
vim.keymap.set("n", "<leader>i", "<CMD>ToggleAlternate<CR>", { desc = "Toggle boolean" })

-- Lazygit
vim.keymap.set("n", "<leader>lg", "<CMD>LazyGit<CR>", { desc = "Open Lazygit" })

-- Treesitter join
vim.keymap.set({ "n", "v" }, "<leader>m", "<CMD>TSJToggle<CR>", { desc = "Toggle Treesitter join" })

-- Telescope emoji
vim.keymap.set("n", "<leader>te", "<CMD>Telescope emoji<CR>", { desc = "Telescope emoji" })
