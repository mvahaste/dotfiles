-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = { "html", "cssls", "jsonls", "ts_ls", "tailwindcss", "taplo", "pyright", "nil_ls" }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- gdscript
require "configs.gdscript"

-- c++
-- lspconfig.clangd.setup {
--   on_attach = function(client, bufnr)
--     client.server_capabilities.signatureHelpProvider = false
--     nvlsp.on_attach(client, bufnr)
--   end,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
--   cmd = {
--     "clangd",
--     "--offset-encoding=utf-16",
--   },
-- }
