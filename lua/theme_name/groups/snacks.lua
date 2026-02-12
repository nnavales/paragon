local M = {}

M.url = "https://github.com/folke/snacks.nvim"

---@type theme_name.HighlightsFn
function M.get(c, opts)
	return {
		SnacksDashboardDesc = { fg = c.fg },
		SnacksDashboardFooter = { fg = c.fg_dim },
		SnacksDashboardHeader = { fg = c.green, bold = true },
		SnacksDashboardIcon = { fg = c.fg },
		SnacksDashboardKey = { fg = c.fg },
		SnacksDashboardSpecial = { fg = c.fg },
		SnacksDashboardDir = { fg = c.fg },

		SnacksNotifierDebug = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
		SnacksNotifierBorderDebug = { fg = c.muted, bg = opts.transparent and c.none or c.bg },
		SnacksNotifierIconDebug = { fg = c.muted },
		SnacksNotifierTitleDebug = { fg = c.muted },

		SnacksNotifierError = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
		SnacksNotifierBorderError = { fg = c.error, bg = opts.transparent and c.none or c.bg },
		SnacksNotifierIconError = { fg = c.error },
		SnacksNotifierTitleError = { fg = c.error },

		SnacksNotifierInfo = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
		SnacksNotifierBorderInfo = { fg = c.info, bg = opts.transparent and c.none or c.bg },
		SnacksNotifierIconInfo = { fg = c.info },
		SnacksNotifierTitleInfo = { fg = c.info },

		SnacksNotifierTrace = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
		SnacksNotifierBorderTrace = { fg = c.magenta, bg = opts.transparent and c.none or c.bg },
		SnacksNotifierIconTrace = { fg = c.magenta },
		SnacksNotifierTitleTrace = { fg = c.magenta },
		SnacksNormal = { fg = c.fg, bg = c.bg },

		SnacksNotifierWarn = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
		SnacksNotifierBorderWarn = { fg = c.warning, bg = opts.transparent and c.none or c.bg },
		SnacksNotifierIconWarn = { fg = c.warning },
		SnacksNotifierTitleWarn = { fg = c.warning },

		SnacksNotifierHistory = { fg = c.fg, bg = c.surface },
		SnacksNotifierBorder = { fg = opts.borders and c.overlay or c.surface, bg = c.surface },
		SnacksNotifierTitle = { fg = c.title, bg = c.overlay, bold = true },

		SnacksProfilerIconInfo = { bg = c.highlight_med, fg = c.cyan },
		SnacksProfilerBadgeInfo = { bg = c.highlight_low, fg = c.cyan },
		SnacksFooterKey = "SnacksProfilerIconInfo",
		SnacksFooterDesc = "SnacksProfilerBadgeInfo",
		SnacksProfilerIconTrace = { bg = c.highlight_med, fg = c.fg_dim },
		SnacksProfilerBadgeTrace = { bg = c.highlight_low, fg = c.fg_dim },

		SnacksIndent = { fg = c.muted, nocombine = true },
		SnacksIndentScope = { fg = c.cyan, nocombine = true },

		SnacksZenIcon = { fg = c.magenta },
		SnacksInputIcon = { fg = c.cyan },
		SnacksInputBorder = { fg = c.yellow },
		SnacksInputTitle = { fg = c.yellow, bold = true },

		SnacksPickerInput = { fg = c.fg, bg = c.surface },
		SnacksPickerInputBorder = { fg = opts.borders and c.overlay or c.surface, bg = c.surface },
		SnacksPickerInputTitle = { fg = c.title, bg = c.overlay, bold = true },
		SnacksPickerBoxTitle = { fg = c.title, bg = c.overlay, bold = true },
		SnacksPickerSelected = { fg = c.fg, bg = c.highlight_high, bold = true },
		SnacksPickerToggle = { bg = c.highlight_low, fg = c.cyan },
		SnacksPickerPickWinCurrent = { fg = c.fg, bg = c.magenta, bold = true },
		SnacksPickerPickWin = { fg = c.fg, bg = c.highlight_med, bold = true },

		SnacksGhLabel = { fg = c.cyan, bold = true },
		SnacksGhDiffHeader = { bg = c.highlight_low, fg = c.cyan },

		SnacksIndent1 = { fg = c.green, nocombine = true },
		SnacksIndent2 = { fg = c.cyan, nocombine = true },
		SnacksIndent3 = { fg = c.magenta, nocombine = true },
		SnacksIndent4 = { fg = c.yellow, nocombine = true },
		SnacksIndent5 = { fg = c.orange, nocombine = true },
		SnacksIndent6 = { fg = c.teal, nocombine = true },
		SnacksIndent7 = { fg = c.error, nocombine = true },
		SnacksIndent8 = { fg = c.fg, nocombine = true },

		SnacksNotifierHistoryTitle = { fg = c.fg, bold = true },
		SnacksNotifierHistoryDateTime = { fg = c.fg_dim },
		SnacksNotifierMinimal = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
	}
end

return M
