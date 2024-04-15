return {
  "L3MON4D3/LuaSnip",
  event = "User TrueLoad",
  version = "v2.*",
  config = function(plugin, opts)
    require "plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
    local ls = require "luasnip"
    ls.filetype_extend("javascript", { "javascriptreact" })
    ls.filetype_extend("", { "markdown" })
    ls.filetype_extend("cuda", { "cpp" })
    require("luasnip.loaders.from_lua").load {
      paths = { "~/.config/nvim/lua/user/snips" },
    }
  end,
}
