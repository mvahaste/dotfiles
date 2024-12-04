require "nvchad.options"

-- Appearance and UI
vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
vim.opt.cursorlineopt = "both"

-- Clipboard and Search
vim.opt.clipboard = "unnamedplus"
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.inccommand = "split"

-- Indentation and Tabs
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.breakindent = true
vim.opt.smartindent = true

-- Scrolling and Offsets
vim.opt.scrolloff = 10

-- Persistent Undo
vim.opt.undofile = true
