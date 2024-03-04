local C = {}

function C.setup(opts)
  opts = opts or {}
  local notify_args = {
    title = "excore.nvim",
  }
  local mappings = {
    VeryLazy = { "/home/czh/.config/nvim/lua/user/excore.lua", 9 },
  }
  vim.api.nvim_create_user_command("XXXX", function()
    -- local original_pos = vim.api.nvim_win_get_cursor(0)
    local current_word = vim.fn.expand "<cword>"
    local mapping = mappings[current_word]
    if mapping == nil then
      vim.notify("Mapping not found for " .. current_word, vim.log.levels.WARN, notify_args)
      return
    end

    local path, line, col = unpack(mapping)

    -- vim.fn.setline(".", vim.fn.substitute(vim.fn.getline ".", current_word, path, ""))
    vim.cmd("edit " .. path)
    vim.cmd(":" .. line)

    -- vim.api.nvim_win_set_cursor(0, original_pos)
  end, {})
end

return C
