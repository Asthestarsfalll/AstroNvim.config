return {
  {
    "wakatime/vim-wakatime",
    event = "VimEnter",
  },
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

  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

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
          -- copy = "#f5c359",
          -- -- delete = "#c75c6a",
          -- delete = "#c75c6a",
          -- -- insert = "#78ccc5",
          -- insert = "#c75c6a",
          visual = "#9745be",
        },

        -- Set opacity for cursorline and number background
        line_opacity = 0.25,

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
  { "f-person/git-blame.nvim" },
  {
    "karb94/neoscroll.nvim",
    event = "VeryLazy",
    config = function()
      require("neoscroll").setup {
        -- All these keys will be mapped to their corresponding default scrolling animation
        mappings = { "<C-u>", "<C-d>", "<C-b>", "<C-f>", "<C-y>", "<C-e>", "zt", "zz", "zb" },
        hide_cursor = true, -- Hide cursor while scrolling
        stop_eof = true, -- Stop at <EOF> when scrolling downwards
        respect_scrolloff = false, -- Stop scrolling when the cursor reaches the scrolloff margin of the file
        cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
        easing_function = nil, -- Default easing function
        pre_hook = nil, -- Function to run before the scrolling animation starts
        post_hook = nil, -- Function to run after the scrolling animation ends
        performance_mode = false, -- Disable "Performance Mode" on all buffers.
      }
    end,
  },
  {
    "simonmclean/triptych.nvim",
    event = "VeryLazy",
    dependencies = {
      "nvim-lua/plenary.nvim", -- required
      "nvim-tree/nvim-web-devicons", -- optional
    },
    config = function()
      require("triptych").setup {
        mappings = {
          -- Everything below is buffer-local, meaning it will only apply to Triptych windows
          show_help = "g?",
          jump_to_cwd = ".", -- Pressing again will toggle back
          nav_left = "h",
          nav_right = { "l", "<CR>" },
          delete = "d",
          add = "a",
          copy = "c",
          rename = "r",
          cut = "x",
          paste = "p",
          quit = "q",
          toggle_hidden = "<leader>.",
        },
        extension_mappings = {},
        options = {
          dirs_first = true,
          show_hidden = false,
          line_numbers = {
            enabled = true,
            relative = false,
          },
          file_icons = {
            enabled = true,
            directory_icon = "",
            fallback_file_icon = "",
          },
          column_widths = { 0.25, 0.25, 0.5 }, -- Must add up to 1 after rounding to 2 decimal places
          highlights = { -- Highlight groups to use. See `:highlight` or `:h highlight`
            file_names = "NONE",
            directory_names = "NONE",
          },
          syntax_highlighting = { -- Applies to file previews
            enabled = true,
            debounce_ms = 100,
          },
        },
        git_signs = {
          enabled = true,
          signs = {
            add = "+",
            modify = "~",
            rename = "r",
            untracked = "?",
          },
        },
        diagnostic_signs = {
          enabled = true,
        },
      }
    end,
  },
  { "LudoPinelli/comment-box.nvim" },
  {
    "Asthestarsfalll/excore.nvim",
    dir = "/home/czh/.config/nvim/excore.nvim",
    name = "excore",
    dev = true,
    event = "VeryLazy",
    config = function() require("excore").setup { t = 1 } end,
  },
  {
    "Asthestarsfalll/excore.nvim",
    event = "VeryLazy",
    config = function()
      require("excore").setup {
        cache_dir = nil,
      }
    end,
  },
}
