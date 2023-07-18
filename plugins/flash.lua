return {
  "folke/flash.nvim",
  event = "VeryLazy",
  keys = {
    { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    { "S", mode = { "n", "o", "x" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
    {
      "R",
      mode = { "o", "x" },
      function() require("flash").treesitter_search() end,
      desc = "Treesitter Search",
    },
    {
      "<c-a>",
      mode = { "c" },
      function() require("flash").toggle() end,
      desc = "Toggle Flash Search",
    },
  },
  opts = {},
  modes = {
    -- a regular search with `/` or `?`
    search = {
      -- when `true`, flash will be activated during regular search by default.
      -- You can always toggle when searching with `require("flash").toggle()`
      enabled = true,
      highlight = { backdrop = false },
      jump = { history = true, register = true, nohlsearch = true },
      search = {
        -- `forward` will be automatically set to the search direction
        -- `mode` is always set to `search`
        -- `incremental` is set to `true` when `incsearch` is enabled
      },
    },
  },
  jump = { autojump = true },
  label = {
    -- allow uppercase labels
    uppercase = true,
    -- add a label for the first match in the current window.
    -- you can always jump to the first match with `<CR>`
    current = true,
    -- minimum pattern length to show labels
    -- Ignored for custom labelers.
    min_pattern_length = 0,
    -- Enable this to use rainbow colors to highlight labels
    -- Can be useful for visualizing Treesitter ranges.
    rainbow = {
      enabled = false,
      -- number between 1 and 9
      shade = 7,
    },
  },
}
