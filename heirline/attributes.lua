-- Customize attributes of highlighting in Heirline components
return {
  -- styling choices for each heirline element, check possible attributes with `:h attr-list`
  git_branch = { bold = true }, -- bold the git branch statusline component
  buffer_picker = { bold = true },
  buffer_active = { bold = true, italic = true },
  macro_recording = { bold = true },
  git_diff = { bold = false },
}
