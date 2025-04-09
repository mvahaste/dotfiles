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
      filetypes = {
        ["*"] = true,
        sh = function()
          if string.match(vim.fs.basename(vim.api.nvim_buf_get_name(0)), "^%.env.*") then
            -- disable for .env files
            return false
          end
          return true
        end,
      }
    }
    vim.keymap.set("i", "<M-i>", function() require("copilot.suggestion").accept() end,
      { noremap = true, silent = true, desc = "Accept Copilot suggestion" })
  end,
}
