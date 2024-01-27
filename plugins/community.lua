return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.bars-and-lines.statuscol-nvim" },
  { import = "astrocommunity.color.ccc-nvim" },
  { import = "astrocommunity.color.headlines-nvim" },

  { import = "astrocommunity.color.mini-hipatterns" },
  { import = "astrocommunity.color.tint-nvim" },
  { import = "astrocommunity.color.vim-highlighter" },
}
