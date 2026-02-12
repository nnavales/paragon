local M = {}

M.url = "https://github.com/folke/flash.nvim"

---@type theme_name.HighlightsFn
function M.get(c, opts)
	return {
		FlashBackdrop = { fg = c.fg_dim },
		FlashLabel = { bg = c.substitute, bold = true, fg = c.bg },
	}
end

return M
