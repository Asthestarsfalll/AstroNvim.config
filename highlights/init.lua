-- return { -- this table overrides highlights in all themes
--   -- Normal = { bg = "#000000" },
-- }
return function()
  local get_hlgroup = require("astronvim.utils").get_hlgroup
  local nontext = get_hlgroup "NonText"
  return {
    CursorLineFold = { link = "CursorLineNr" }, -- highlight fold indicator as well as line number
    CursorLineNr = { fg = "#eb6f92", bold = true },
    TermCursor = { bg = "#eb6f92" },
    GitSignsCurrentLineBlame = { fg = nontext.fg, italic = true }, -- italicize git blame virtual text
    HighlightURL = { underline = true }, -- always underline URLs
    OctoEditable = { fg = "NONE", bg = "NONE" }, -- use treesitter for octo.nvim highlighting
    PmenuSel = { bg = "#31748f", fg = "#21202e", bold = true, italic = true },
  }
end
