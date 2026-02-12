local M = {}

M.url = "https://github.com/nvimdev/indentmini.nvim"

---@type theme_name.HighlightsFn
function M.get(c, opts)
	return {
		IndentLine = { fg = c.fg_dim, nocombine = true },
		IndentLineCurrent = { fg = c.fg_dim, nocombine = true },
	}
end

return M
