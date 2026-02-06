local M = {}

M.url = "https://github.com/folke/lazy.nvim"

---@type theme_name.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    LazyProgressDone = { bold = true, fg = c.bg },
    LazyProgressTodo = { bold = true, fg = c.magenta},
  }
end

return M
