require "nvchad.mappings"

-- ╭─────────────────────────────────────────────────────────╮
-- │                          Base                           │
-- ╰─────────────────────────────────────────────────────────╯

-- Command Mode Shortcut
-- vim.keymap.set("n", ";", ":", { desc = "CMD enter command mode" })

-- Escape Insert Mode
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
vim.keymap.set("v", "<leader>l", 'yoconsole.log("<ESC>pa:", <ESC>pa);<ESC>', { desc = "console.log() selection" })

-- Code action
vim.keymap.set("n", "<leader>ca", "<CMD>lua vim.lsp.buf.code_action()<CR>", { desc = "Code action" })

-- Add "use client"; to the top of the current buffer
vim.keymap.set("n", "<leader>cc", "<CMD>UseClient<CR>", {
  desc = 'Add "use client"; to the top of the current buffer',
})

-- ╭─────────────────────────────────────────────────────────╮
-- │                         Plugins                         │
-- ╰─────────────────────────────────────────────────────────╯

-- alternate-toggler
vim.keymap.set("n", "<leader>i", "<CMD>ToggleAlternate<CR>", { desc = "Toggle boolean" })

-- comment-box.nvim
vim.keymap.set("n", "<leader>cb", "<cmd>CBlcbox<cr>", { desc = "Comment Box" })
vim.keymap.set("v", "<leader>cb", "<cmd>CBlcbox<cr>", { desc = "Comment Box" })

-- copilot.lua
vim.keymap.set("i", "<M-i>", function()
  require("copilot.suggestion").accept()
end, { noremap = true, silent = true, desc = "Accept Copilot suggestion" })

-- leap.nvim
vim.keymap.set({ "n", "x", "o" }, "s", "<Plug>(leap-forward)")
vim.keymap.set({ "n", "x", "o" }, "S", "<Plug>(leap-backward)")
vim.keymap.set({ "n", "x", "o" }, "gs", "<Plug>(leap-from-window)")

-- nvim-tmux-navigation
local nvim_tmux_nav = require "nvim-tmux-navigation"

vim.keymap.set("n", "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
vim.keymap.set("n", "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
vim.keymap.set("n", "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
vim.keymap.set("n", "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
vim.keymap.set("n", "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
vim.keymap.set("n", "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext)

-- snacks.nvim
local Snacks = require "snacks"

vim.keymap.set("n", "<leader>lg", function()
  Snacks.lazygit.open()
end, { desc = "Open Lazygit" })
vim.keymap.set("n", "<leader>gb", function()
  Snacks.gitbrowse()
end, { desc = "Gitbrowse" })
vim.keymap.set("n", "<leader>nh", function()
  Snacks.notifier.show_history()
end, { desc = "Notifier history" })

-- telsecope.nvim
local telescope_builtin = require "telescope.builtin"
vim.keymap.set("n", "<leader>fs", function()
  telescope_builtin.lsp_document_symbols {
    symbols = {
      "class",
      "variable",
      "constant",
      "function",
      "method",
      "constructor",
      "module",
      "interface",
      "enum",
      "namespace",
      "struct",
    },
  }
end, { desc = "telescope document symbols" })
vim.keymap.set("n", "<leader>fS", function()
  telescope_builtin.lsp_workspace_symbols {
    symbols = {
      "class",
      "variable",
      "constant",
      "function",
      "method",
      "constructor",
      "module",
      "interface",
      "enum",
      "namespace",
      "struct",
    },
  }
end, { desc = "telescope workspace symbols" })
vim.keymap.set("n", "<leader>fr", function()
  telescope_builtin.lsp_references()
end, { desc = "telescope references" })

-- markdown-preview.nvim
vim.keymap.set("n", "<leader>mp", function()
  vim.cmd "MarkdownPreviewToggle"
end, { desc = "Markdown preview" })
