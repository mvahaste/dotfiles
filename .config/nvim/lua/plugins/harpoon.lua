-- Set up Harpoon to use Telescope as the UI

local harpoon = require('harpoon')
harpoon:setup({})

-- basic telescope configuration
local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
  local file_paths = {}
  for _, item in ipairs(harpoon_files.items) do
    table.insert(file_paths, item.value)
  end

  require("telescope.pickers").new({}, {
    prompt_title = "Harpoon",
    finder = require("telescope.finders").new_table({
      results = file_paths,
    }),
    previewer = conf.file_previewer({}),
    sorter = conf.generic_sorter({}),
  }):find()
end

vim.keymap.set("n", "<C-e>", function() toggle_telescope(harpoon:list()) end,
  { desc = "Open Harpoon window" })

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, { desc = "Add a file to Harpoon" })
-- vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end,
--   { desc = "Toggle Harpoon list" })

-- vim.keymap.set("n", "<C-u>", function() harpoon:list():select(1) end, { desc = "Switch to Harpoon buffer 1" })

return {}
