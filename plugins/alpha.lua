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
  { "02_gif.txt", 84, 26 },
  { "02_1_gif.txt", 81, 25 },
  { "02_2_gif.txt", 81, 25 },
  { "02_3_gif.txt", 88, 27 },
  { "02_4_gif.txt", 86, 27 },
  { "02_5_gif.txt", 81, 25 },
  { "02_6_gif.txt", 81, 25 },

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

    if vim.loop.os_uname().sysname == "Linux" then
      dashboard.opts.opts.noautocmd = true
      dashboard.section.terminal.opts.redraw = true
      local idx = math.random(1, #ANIME)
      local info = ANIME[idx]
      path = os.getenv "HOME" .. "/.config/nvim/lua/user/plugins/"
      
      if idx > 4 then
        dashboard.section.terminal.command = "sh " .. path .. "show.sh " .. path .. info[1]
      else
        dashboard.section.terminal.command = "cat " .. path .. info[1]
      end
      dashboard.section.terminal.width = info[2]
      dashboard.section.terminal.height = info[3]

      if idx == 4 then
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
    else
      dashboard.section.header.val = WEEKDAYS[getDayOfWeek()]
    end
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
