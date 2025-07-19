-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.nvdash = {
  load_on_startup = true,
  buttons = {
    { txt = "  Find File", keys = "ff", cmd = "Telescope find_files" },
    { txt = "  Recent Files", keys = "fo", cmd = "Telescope oldfiles" },
    { txt = "󰈭  Find Word", keys = "fw", cmd = "Telescope live_grep" },
    { txt = "  Lazygit", keys = "lg", cmd = ":lua require('snacks.lazygit').open()" },
    -- { txt = "󱥚  Themes", keys = "th", cmd = ":lua require('nvchad.themes').open()" },
    -- { txt = "  Mappings", keys = "ch", cmd = "NvCheatsheet" },
  },
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
    theme = "default",
  },
  tabufline = {
    order = { "treeOffset", "buffers", "tabs" },
  },
}

return M
