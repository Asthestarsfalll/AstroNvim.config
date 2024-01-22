math.randomseed(os.time())
WEEKDAYS = {
  {

    "███╗   ███╗ ██████╗ ███╗   ██╗██████╗  █████╗ ██╗   ██╗",
    "████╗ ████║██╔═══██╗████╗  ██║██╔══██╗██╔══██╗╚██╗ ██╔╝",
    "██╔████╔██║██║   ██║██╔██╗ ██║██║  ██║███████║ ╚████╔╝ ",
    "██║╚██╔╝██║██║   ██║██║╚██╗██║██║  ██║██╔══██║  ╚██╔╝  ",
    "██║ ╚═╝ ██║╚██████╔╝██║ ╚████║██████╔╝██║  ██║   ██║   ",
    "╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚═════╝ ╚═╝  ╚═╝   ╚═╝   ",
  },
  {
    "████████╗██╗   ██╗███████╗███████╗██████╗  █████╗ ██╗   ██╗",
    "╚══██╔══╝██║   ██║██╔════╝██╔════╝██╔══██╗██╔══██╗╚██╗ ██╔╝",
    "   ██║   ██║   ██║█████╗  ███████╗██║  ██║███████║ ╚████╔╝ ",
    "   ██║   ██║   ██║██╔══╝  ╚════██║██║  ██║██╔══██║  ╚██╔╝  ",
    "   ██║   ╚██████╔╝███████╗███████║██████╔╝██║  ██║   ██║   ",
    "   ╚═╝    ╚═════╝ ╚══════╝╚══════╝╚═════╝ ╚═╝  ╚═╝   ╚═╝   ",
  },

  {
    "██╗    ██╗███████╗██████╗ ███╗   ██╗███████╗███████╗██████╗  █████╗ ██╗   ██╗",
    "██║    ██║██╔════╝██╔══██╗████╗  ██║██╔════╝██╔════╝██╔══██╗██╔══██╗╚██╗ ██╔╝",
    "██║ █╗ ██║█████╗  ██║  ██║██╔██╗ ██║█████╗  ███████╗██║  ██║███████║ ╚████╔╝ ",
    "██║███╗██║██╔══╝  ██║  ██║██║╚██╗██║██╔══╝  ╚════██║██║  ██║██╔══██║  ╚██╔╝  ",
    "╚███╔███╔╝███████╗██████╔╝██║ ╚████║███████╗███████║██████╔╝██║  ██║   ██║   ",
    " ╚══╝╚══╝ ╚══════╝╚═════╝ ╚═╝  ╚═══╝╚══════╝╚══════╝╚═════╝ ╚═╝  ╚═╝   ╚═╝   ",
  },
  {
    "████████╗██╗  ██╗██╗   ██╗██████╗ ███████╗██████╗  █████╗ ██╗   ██╗",
    "╚══██╔══╝██║  ██║██║   ██║██╔══██╗██╔════╝██╔══██╗██╔══██╗╚██╗ ██╔╝",
    "   ██║   ███████║██║   ██║██████╔╝███████╗██║  ██║███████║ ╚████╔╝ ",
    "   ██║   ██╔══██║██║   ██║██╔══██╗╚════██║██║  ██║██╔══██║  ╚██╔╝  ",
    "   ██║   ██║  ██║╚██████╔╝██║  ██║███████║██████╔╝██║  ██║   ██║   ",
    "   ╚═╝   ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═════╝ ╚═╝  ╚═╝   ╚═╝   ",
  },
  {
    "███████╗██████╗ ██╗██████╗  █████╗ ██╗   ██╗",
    "██╔════╝██╔══██╗██║██╔══██╗██╔══██╗╚██╗ ██╔╝",
    "█████╗  ██████╔╝██║██║  ██║███████║ ╚████╔╝ ",
    "██╔══╝  ██╔══██╗██║██║  ██║██╔══██║  ╚██╔╝  ",
    "██║     ██║  ██║██║██████╔╝██║  ██║   ██║   ",
    "╚═╝     ╚═╝  ╚═╝╚═╝╚═════╝ ╚═╝  ╚═╝   ╚═╝   ",
  },
  {
    "███████╗ █████╗ ████████╗██╗   ██╗██████╗ ██████╗  █████╗ ██╗   ██╗",
    "██╔════╝██╔══██╗╚══██╔══╝██║   ██║██╔══██╗██╔══██╗██╔══██╗╚██╗ ██╔╝",
    "███████╗███████║   ██║   ██║   ██║██████╔╝██║  ██║███████║ ╚████╔╝ ",
    "╚════██║██╔══██║   ██║   ██║   ██║██╔══██╗██║  ██║██╔══██║  ╚██╔╝  ",
    "███████║██║  ██║   ██║   ╚██████╔╝██║  ██║██████╔╝██║  ██║   ██║   ",
    "╚══════╝╚═╝  ╚═╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚═════╝ ╚═╝  ╚═╝   ╚═╝   ",
  },
  {
    "███████╗██╗   ██╗███╗   ██╗██████╗  █████╗ ██╗   ██╗",
    "██╔════╝██║   ██║████╗  ██║██╔══██╗██╔══██╗╚██╗ ██╔╝",
    "███████╗██║   ██║██╔██╗ ██║██║  ██║███████║ ╚████╔╝ ",
    "╚════██║██║   ██║██║╚██╗██║██║  ██║██╔══██║  ╚██╔╝  ",
    "███████║╚██████╔╝██║ ╚████║██████╔╝██║  ██║   ██║   ",
    "╚══════╝ ╚═════╝ ╚═╝  ╚═══╝╚═════╝ ╚═╝  ╚═╝   ╚═╝   ",
  },
}
ANIME = {
  { "02.txt", 54, 26 },
  { "Lucy.txt", 46, 21 },
  { "Ayanami.txt", 59, 32 },
  { "Asuka.txt", 167, 34 },
}

local function getDayOfWeek()
  local dayOfWeek = os.date "%w"
  if dayOfWeek == "0" then dayOfWeek = "7" end
  return tonumber(dayOfWeek)
end

return {
  "goolord/alpha-nvim",
  cmd = "Alpha",
  opts = function()
    local dashboard = require "alpha.themes.dashboard"
    require "alpha.term"

    local button = require("astronvim.utils").alpha_button
    local get_icon = require("astronvim.utils").get_icon

    -- dashboard.section.header.val = WEEKDAYS[getDayOfWeek()]

    dashboard.opts.opts.noautocmd = true
    dashboard.section.terminal.opts.redraw = true
    local idx = math.random(1, #ANIME)
    idx = 4
    local info = ANIME[idx]
    dashboard.section.terminal.command = "cat " .. os.getenv "HOME" .. "/.config/nvim/lua/user/plugins/" .. info[1]
    dashboard.section.terminal.width = info[2]
    dashboard.section.terminal.height = info[3]

    if idx == #ANIME then
      dashboard.section.buttons.val = {
        button("LDR S l", get_icon("Refresh", 2, true) .. "Last Session  "),
      }
    end

    dashboard.opts.layout = {
      dashboard.section.terminal,
      { type = "padding", val = 2 },
      dashboard.section.buttons,
      dashboard.section.footer,
    }
    return dashboard
  end,
  config = function(_, opts)
    require("alpha").setup(opts.config)

    vim.api.nvim_create_autocmd("User", {
      pattern = "LazyVimStarted",
      desc = "Add Alpha dashboard footer",
      once = true,
      callback = function()
        local stats = require("lazy").stats()
        local ms = math.floor(stats.startuptime * 100 + 0.5) / 100
        opts.section.footer.val = { " ", " ", " ", "Loaded " .. stats.count .. " plugins  in " .. ms .. "ms" }
        opts.section.footer.opts.hl = "DashboardFooter"
        pcall(vim.cmd.AlphaRedraw)
      end,
    })
  end,
}
