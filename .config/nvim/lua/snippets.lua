local prettierrc = [[
{
  "arrowParens": "avoid",
  "bracketSpacing": true,
  "htmlWhitespaceSensitivity": "css",
  "insertPragma": false,
  "jsxSingleQuote": false,
  "printWidth": 80,
  "proseWrap": "always",
  "quoteProps": "as-needed",
  "requirePragma": false,
  "semi": false,
  "singleQuote": false,
  "tabWidth": 2,
  "trailingComma": "all",
  "useTabs": false
}
]]

function CreatePrettierrc()
  local output_file = ".prettierrc"
  local file = io.open(output_file, "w")

  if file then
    file:write(prettierrc)
    file:close()
    print(".prettierrc created in project root")
  else
    print("Error: Could not create .prettierrc")
  end
end

vim.api.nvim_create_user_command(
  "CreatePrettierrc",
  CreatePrettierrc,
  { desc = "Creates a base .prettierrc file in the project root" }
)