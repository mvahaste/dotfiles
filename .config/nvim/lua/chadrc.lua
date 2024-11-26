-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "gruvchad",
  transparency = true,
  hl_override = {
    Visual = {
      bg = "grey",
    }
  }
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
