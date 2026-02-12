local M = {}

M.url = "https://github.com/stevearc/aerial.nvim"

---@type theme_name.HighlightsFn
function M.get(c, opts)
	local ret = {
		AerialNormal = { fg = c.fg, bg = c.none },
		AerialGuide = { fg = c.fg_dim },
		AerialLine = "LspInlayHint",
	}
	require("theme_name.groups.kinds").kinds(ret, "Aerial%sIcon")
	return ret
end

return M
