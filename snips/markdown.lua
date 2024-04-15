-- see https://zjp-cn.github.io/neovim0.6-blogs/nvim/luasnip/doc1.html

local ls = require "luasnip"
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require "luasnip.util.events"
local ai = require "luasnip.nodes.absolute_indexer"
local extras = require "luasnip.extras"
local fmt = extras.fmt
local m = extras.m
local l = extras.l
local postfix = require("luasnip.extras.postfix").postfix

return {
  s("doc", {
    t { "---", "title: " },
    i(1),
    t { "", "authors:", "  - " },
    i(2),
    t { "", "tags:", "  - " },
    i(3),
    t { "", "hide_table_of_contents: false", },
    i(0),
    t { "", "---" },
  }),
}
