-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.nvdash = {
  load_on_startup = true,
}

M.base46 = {
  theme = "chocolate",
  transparency = true,
}

M.ui = {
  cmp = {
    format_colors = {
      tailwind = true,
    },
  },
  statusline = {
    theme = "vscode",
  },
  tabufline = {
    order = { "treeOffset", "buffers", "tabs" },
  },
}

return M
