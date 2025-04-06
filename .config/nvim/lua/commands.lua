-- Create .prettierrc
local prettierrc = [[
{
  "printWidth": 80,
  "tabWidth": 2,
  "useTabs": false,
  "semi": true,
  "singleQuote": false,
  "trailingComma": "all",
  "bracketSpacing": true,
  "jsxBracketSameLine": false,
  "arrowParens": "always",
  "plugins": ["prettier-plugin-tailwindcss", "prettier-plugin-organize-imports"]
}
]]

function CreatePrettierrc()
  local output_file = ".prettierrc"
  local file = io.open(output_file, "w")

  if file then
    file:write(prettierrc)
    file:close()
    print ".prettierrc created in project root"
  else
    print "Error: Could not create .prettierrc"
  end
end

vim.api.nvim_create_user_command(
  "CreatePrettierrc",
  CreatePrettierrc,
  { desc = "Creates a base .prettierrc file in the project root" }
)

-- Function to add "use client"; to the top of the current buffer
function UseClient()
  -- Get the current buffer number
  local bufnr = vim.api.nvim_get_current_buf()

  -- Insert "use client"; at the beginning of the buffer
  vim.api.nvim_buf_set_lines(bufnr, 0, 0, true, { "\"use client\";" })
  -- Create a new empty line after the "use client"; line
  vim.api.nvim_buf_set_lines(bufnr, 1, 1, true, { "" })
end

-- Create a user command to call the UseClient function
vim.api.nvim_create_user_command(
  "UseClient",
  UseClient,
  { desc = "Add \"use client\"; to the top of the current buffer" }
)
