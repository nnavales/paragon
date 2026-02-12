local M = {}

M.url = "https://github.com/echasnovski/mini.pick"

---@type theme_name.HighlightsFn
function M.get(c)
	return {
		MiniPickBorder = "FloatBorder",
		MiniPickBorderBusy = "DiagnosticFloatingWarn",
		MiniPickIconDirectory = "Directory",
		MiniPickIconFile = "MiniPickNormal",
		MiniPickHeader = "DiagnosticFloatingHint",
		MiniPickMatchCurrent = "CursorLine",
		MiniPickMatchMarked = "Visual",
		MiniPickMatchRanges = { fg = c.match },
		MiniPickNormal = "NormalFloat",
		MiniPickPreviewLine = "CursorLine",
		MiniPickPreviewRegion = "IncSearch",
		MiniPickBorderText = { fg = c.title, bg = c.overlay },
		MiniPickPrompt = { fg = c.fg, bg = c.surface },
	}
end

return M
