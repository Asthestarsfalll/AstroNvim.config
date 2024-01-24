-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<C-\\>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
    ["<S-w>"] = { function() require("astronvim.utils.buffer").close() end, desc = "Close buffer" },
    ["<S-l>"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    ["<S-h>"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },

    -- Navigate tabs
    ["<leader>]"] = { function() vim.cmd.tabnext() end, desc = "Next tab" },
    ["<leader>["] = { function() vim.cmd.tabprevious() end, desc = "Previous tab" },

    -- Cursorline
    ["<leader>Ou"] = { "<cmd>highlight CursorLine gui=underline cterm=underline<cr>", desc = "CursorLine Underine" },
    ["<leader>Or"] = { "<cmd>highlight CursorLine gui=reverse cterm=reverse<cr>", desc = "CursorLine Reverse" },

    -- maximizer
    ["mt"] = { "<cmd>lua require('maximizer').toggle()<CR>" },
    ["mn"] = { "<cmd>lua require('maximizer').maximize()<CR>" },
    ["mr"] = { "<cmd>lua require('maximizer').restore()<CR>" },

    ["ga"] = { "<cmd>EasyAlign<CR>" },

    ["<leader>ln"] = { "<cmd>NoiceDismiss<CR>" },
  },
  v = {
    ["ga"] = { "<cmd>EasyAlign<CR>" },
  },
  t = {
    ["<C-\\>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
  },
  i = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
    ["<C-\\>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },

    ["<C-h>"] = { "<Left>" },
    ["<C-j>"] = { "<Down>" },
    ["<C-k>"] = { "<up>" },
    ["<C-l>"] = { "<Right>" },
  },
}
