require "nvchad.mappings"

-- Command Mode Shortcut
vim.keymap.set("n", ";", ":", { desc = "CMD enter command mode" })
vim.keymap.set("i", "jk", "<ESC>")

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

-- Enter new line above/below
vim.keymap.set("n", "<leader>o", "o<Esc>k", { desc = "New line below" })
vim.keymap.set("n", "<leader>O", "O<Esc>j", { desc = "New line above" })

-- Leader w/q to save/quit
vim.keymap.set("n", "<leader>w", "<CMD>w<CR>", { desc = "Save" })
vim.keymap.set("n", "<leader>q", "<CMD>q<CR>", { desc = "Quit" })

-- Control backspace
vim.keymap.set("i", "<C-H>", "<C-W>", { desc = "Delete previous word" })

-- Save Shortcut
vim.keymap.set({ "n", "i", "v" }, "<C-s>", "<CMD> w <CR>")

-- Log selection in new line
vim.keymap.set("v", "<leader>l", "yoconsole.log(\"<ESC>pa:\", <ESC>pa);<ESC>", { desc = "console.log() selection" })

-- Add "use client"; to the top of the current buffer
vim.keymap.set("n", "<leader>cuc", "<CMD>UseClient<CR>",
  { desc = "Add \"use client\"; to the top of the current buffer" })
