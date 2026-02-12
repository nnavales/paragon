local M = {}

M.url = "https://github.com/nvim-neotest/neotest"

---@type theme_name.HighlightsFn
function M.get(c, opts)
	return {
		NeotestPassed = { fg = c.green },
		NeotestFailed = { fg = c.error },
		NeotestRunning = { fg = c.yellow },
		NeotestSkipped = { fg = c.cyan },

		NeotestTest = { fg = c.fg },
		NeotestNamespace = { fg = c.magenta },
		NeotestFile = { fg = c.teal },
		NeotestDir = { fg = c.cyan },
		NeotestAdapterName = { fg = c.magenta, bold = true },

		NeotestBorder = { fg = opts.borders and c.overlay or c.surface },
		NeotestIndent = { fg = c.muted },
		NeotestExpandMarker = { fg = c.fg_dim },
		NeotestFocused = { fg = c.yellow, bold = true },
		NeotestMarked = { fg = c.orange },
		NeotestTarget = { fg = c.warning },
		NeotestWinSelect = { fg = c.cyan, bold = true },

		NeotestUnknown = { fg = c.muted },
	}
end

return M
