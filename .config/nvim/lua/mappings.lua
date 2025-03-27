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
vim.keymap.set("n", "<leader>o", "o<Esc>k")
vim.keymap.set("n", "<leader>O", "O<Esc>j")

-- Leader w/q to save/quit
vim.keymap.set("n", "<leader>w", "<CMD>w<CR>", { desc = "Save" })
vim.keymap.set("n", "<leader>q", "<CMD>q<CR>", { desc = "Quit" })

-- Control backspace
vim.keymap.set("i", "<C-H>", "<C-W>", { desc = "Delete previous word" })

-- Save Shortcut
vim.keymap.set({ "n", "i", "v" }, "<C-s>", "<CMD> w <CR>")

-- Log selection in new line
vim.keymap.set("v", "<leader>l", "yoconsole.log(\"<ESC>pa:\", <ESC>pa);<ESC>", { desc = "console.log selection" })

-- Navigate windows and tmux
vim.keymap.set("n", "<C-l>", "<CMD> TmuxNavigateRight<CR>", { desc = "Window right" })
vim.keymap.set("n", "<C-j>", "<CMD> TmuxNavigateDown<CR>", { desc = "Window down" })
vim.keymap.set("n", "<C-k>", "<CMD> TmuxNavigateUp<CR>", { desc = "Window up" })
vim.keymap.set("n", "<C-h>", "<CMD> TmuxNavigateLeft<CR>", { desc = "Window left" })

-- Leap
vim.keymap.set({ "n", "x", "o" }, "s", "<Plug>(leap-forward)")
vim.keymap.set({ "n", "x", "o" }, "S", "<Plug>(leap-backward)")
vim.keymap.set({ "n", "x", "o" }, "gs", "<Plug>(leap-from-window)")

-- Toggle Boolean
vim.keymap.set("n", "<leader>i", "<CMD>ToggleAlternate<CR>", { desc = "Toggle boolean" })

-- Lazygit
vim.keymap.set("n", "<leader>lg", "<CMD>LazyGit<CR>", { desc = "Open Lazygit" })

-- Treesitter join
vim.keymap.set({ "n", "v" }, "<leader>m", "<CMD>TSJToggle<CR>", { desc = "Toggle Treesitter join" })

-- Telescope notify
vim.keymap.set("n", "<leader>n", "<CMD>Telescope notify<CR>", { desc = "Telescope notify" })

-- Trouble
vim.keymap.set("n", "<leader>tt", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Diagnostics (Trouble)" })
vim.keymap.set("n", "<leader>tT", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
  { desc = "Buffer Diagnostics (Trouble)" })
vim.keymap.set("n", "<leader>cs", "<cmd>Trouble symbols toggle focus=false<cr>", { desc = "Symbols (Trouble)" })
vim.keymap.set("n", "<leader>cl", "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
  { desc = "LSP Definitions / references / ... (Trouble)" })
vim.keymap.set("n", "<leader>tL", "<cmd>Trouble loclist toggle<cr>", { desc = "Location List (Trouble)" })
vim.keymap.set("n", "<leader>tQ", "<cmd>Trouble qflist toggle<cr>", { desc = "Quickfix List (Trouble)" })

-- Debugger
vim.keymap.set("n", "<leader>db", "<CMD>DapToggleBreakpoint<CR>", { desc = "Toggle breakpoint" })
vim.keymap.set("n", "<leader>dr", "<CMD>DapContinue<CR>", { desc = "Start or continue the debugger" })

-- Compiler
vim.api.nvim_set_keymap("n", "<leader>co", "<cmd>CompilerOpen<cr>",
  { noremap = true, silent = true, desc = "Open compiler" })
vim.api.nvim_set_keymap("n", "<leader>cr",
  "<cmd>CompilerStop<cr>" -- (Optional, to dispose all tasks before redo)
  .. "<cmd>CompilerRedo<cr>",
  { noremap = true, silent = true, desc = "Compiler redo last" })
vim.api.nvim_set_keymap("n", "<leader>ct", "<cmd>CompilerToggleResults<cr>",
  { noremap = true, silent = true, desc = "Compiler toggle results" })

-- Copilot
vim.keymap.set("i", "<M-i>", function() require("copilot.suggestion").accept() end,
  { noremap = true, silent = true, desc = "Accept Copilot suggestion" })

-- Paste image
vim.keymap.set("n", "<leader>pi", "<CMD>PasteImage<CR>", { desc = "Paste image from system clipboard" })
