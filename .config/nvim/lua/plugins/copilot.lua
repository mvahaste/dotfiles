return {
  "zbirenbaum/copilot.lua",
  lazy = true,
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup {
      suggestion = {
        auto_trigger = true,
      },
    }
    vim.keymap.set("i", "<M-i>", function() require("copilot.suggestion").accept() end,
      { noremap = true, silent = true, desc = "Accept Copilot suggestion" })
  end,
}
