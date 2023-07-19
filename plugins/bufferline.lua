return {
  "akinsho/bufferline.nvim",
  enabled = false,
  event = "ColorScheme",
  config = function()
    local highlights = require "rose-pine.plugins.bufferline"
    require("bufferline").setup { highlights = highlights }
  end,
}
