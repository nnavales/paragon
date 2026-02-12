local M = {}

M.url = "https://github.com/phaazon/hop.nvim"

---@type theme_name.HighlightsFn
function M.get(c, opts)
	return {
		HopNextKey = { fg = c.search, bold = true },
		HopNextKey1 = { fg = c.search, bold = true },
		HopNextKey2 = { fg = c.search },
		HopUnmatched = { fg = c.fg_dim },
	}
end

return M
