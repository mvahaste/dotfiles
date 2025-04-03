return {
  "OXY2DEV/markview.nvim",
  -- lazy = false,
  ft = "markdown",
  config = function()
    local presets = require("markview.presets");

    require("markview").setup({
      markdown = {
        headings = presets.headings.glow
      }
    });
  end
};
