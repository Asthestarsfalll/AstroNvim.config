return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "wakatime/vim-wakatime",
    event = "VimEnter",
  },
  "folke/tokyonight.nvim",
  {
    "rose-pine/neovim",
    as = "rose-pine",
    config = function()
      require("rose-pine").setup {
        highlight_groups = {
          Substitute = { bg = "love", fg = "text" },
          -- Blend colours against the "base" background
          CursorLine = { bg = "iris", blend = 15 },
          StatusLine = { fg = "love", bg = "love", blend = 15 },
        },
      }
    end,
  },

  -- { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

  "folke/tokyonight.nvim",
  {
    "h-hg/fcitx.nvim",
    event = "VeryLazy",
  },

  {
    "0x00-ketsu/maximizer.nvim",
    config = function()
      require("maximizer").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end,
  },

  {
    "kylechui/nvim-surround",
    -- version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },

  {
    "folke/todo-comments.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
  },
  {
    "folke/zen-mode.nvim",
    event = "VeryLazy",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },

  {
    "ahmedkhalf/project.nvim",
    event = "VeryLazy",
    config = function()
      require("project_nvim").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end,
  },
  {
    "mvllow/modes.nvim",
    event = "VeryLazy",
    tag = "v0.2.0",
    config = function()
      require("modes").setup {
        colors = {
          copy = "#f5c359",
          -- delete = "#c75c6a",
          delete = "#c75c6a",
          -- insert = "#78ccc5",
          insert = "#c75c6a",
        },

        -- Set opacity for cursorline and number background
        line_opacity = 0.15,

        -- Enable cursor highlights
        set_cursor = true,

        -- Enable cursorline initially, and disable cursorline for inactive windows
        -- or ignored filetypes
        set_cursorline = true,

        -- Enable line number highlights to match cursorline
        set_number = true,

        -- Disable modes highlights in specified filetypes
        -- Please PR commonly ignored filetypes
        ignore_filetypes = { "NvimTree", "TelescopePrompt" },
      }
    end,
  },
  {
    "Asthestarsfalll/clock.nvim",
    event = "VeryLazy",
    config = function() require("clock").setup {} end,
  },
  { "junegunn/vim-easy-align", event = "User AstroFile" },
  {
    "Aasim-A/scrollEOF.nvim",
    event = "User AstroFile",
    config = function()
      require("scrollEOF").setup {
        -- The pattern used for the internal autocmd to determine
        -- where to run scrollEOF. See https://neovim.io/doc/user/autocmd.html#autocmd-pattern
        pattern = "*",
        -- Whether or not scrollEOF should be enabled in insert mode
        insert_mode = false,
        -- List of filetypes to disable scrollEOF for.
        disabled_filetypes = {},
        -- List of modes to disable scrollEOF for. see https://neovim.io/doc/user/builtin.html#mode() for available modes.
        disabled_modes = {},
      }
    end,
  },
  {"f-person/git-blame.nvim"}
}
