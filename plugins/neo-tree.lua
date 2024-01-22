local get_icon = require("astronvim.utils").get_icon
return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = { "3rd/image.nvim" },
  opts = {
    sources = { "filesystem", "buffers", "git_status", "document_symbols" },
    source_selector = {
      sources = {
        { source = "filesystem", display_name = get_icon("FolderClosed", 1, true) .. "File" },
        { source = "buffers", display_name = get_icon("DefaultFile", 1, true) .. "Bufs" },
        { source = "git_status", display_name = get_icon("Git", 1, true) .. "Git" },
        { source = "document_symbols", display_name = get_icon("Diagnostic", 1, true) .. "Diagnostic" },
      },
    },
    filesystem = {
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_gitignored = false,
        hide_by_name = {
          "node_modules",
          "dist",
        },
      },
      follow_current_file = {
        enabled = true,
        leave_dirs_open = true,
      },
      group_empty_dirs = true,
      hijack_netrw_behavior = "open_current",
    },
  },
}
