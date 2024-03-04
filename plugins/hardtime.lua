return {
  "m4xshen/hardtime.nvim",
  enabled=false,
  event = "User AstroFile",
  opts = {
    disabled_keys = {
      ["<Up>"] = {},
      ["<Down>"] = {},
      ["<Left>"] = {},
      ["<Right>"] = {},
    },
  },
  config = function(_, opts)
    require("hardtime").setup(opts)
    require("hardtime").enable()
  end,
}
