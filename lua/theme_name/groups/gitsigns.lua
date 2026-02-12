local M = {}

M.url = "https://github.com/lewis6991/gitsigns.nvim"

---@type theme_name.HighlightsFn
function M.get(c, opts)
	return {
		GitSignsAdd = { fg = c.git.add },
		GitSignsChange = { fg = c.git.change },
		GitSignsDelete = { fg = c.git.delete },
	}
end

return M
