return {
  "RRethy/vim-illuminate",
  lazy = true,
  event = "BufEnter",
  config = function()
    require("illuminate").configure {
      delay = 0,
    }
  end,
}
