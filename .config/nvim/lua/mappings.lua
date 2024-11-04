require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- vim-tmux-navigator
map("n", "<C-h>", "<CMD> TmuxNavigateLeft<CR>", { desc = "Window left" })
map("n", "<C-l>", "<CMD> TmuxNavigateRight<CR>", { desc = "Window right" })
map("n", "<C-j>", "<CMD> TmuxNavigateDown<CR>", { desc = "Window down" })
map("n", "<C-k>", "<CMD> TmuxNavigateUp<CR>", { desc = "Window up" })

-- move lines
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- append line from below to current
map("n", "J", "mzJ`z")

-- keep cursor in the middle
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- keep cursor in the middle
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- flip boolean
map("n", "<leader>i", "<CMD>ToggleAlternate<CR>", { desc = "Flip boolean" })

-- map({ "n", "i", "v" }, "<C-s>", "<CMD> w <CR>")
