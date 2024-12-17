local prettierrc = [[
{
  "printWidth": 80,
  "tabWidth": 4,
  "useTabs": true,
  "semi": true,
  "singleQuote": false,
  "trailingComma": "all",
  "bracketSpacing": true,
  "jsxBracketSameLine": false,
  "arrowParens": "always",
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
