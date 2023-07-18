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
          ColorColumn = { bg = "rose" },
          -- Blend colours against the "base" background
          CursorLine = { bg = "foam", blend = 10 },
          StatusLine = { fg = "love", bg = "love", blend = 10 },
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
}
