local M = {}

M.url = "https://github.com/akinsho/bufferline.nvim"

---@type theme_name.HighlightsFn
function M.get(c, opts)
	return {
		BufferLineFill = { fg = c.muted, bg = c.bg },
		BufferLineBackground = { fg = c.muted, bg = c.surface },
		BufferLineBufferVisible = { fg = c.fg_dim, bg = c.highlight_med },
		BufferLineBufferSelected = { fg = c.fg, bg = c.bg, bold = true },

		-- Separators
		BufferLineSeparator = { fg = c.bg, bg = c.surface },
		BufferLineSeparatorVisible = { fg = c.bg, bg = c.highlight_med },
		BufferLineSeparatorSelected = { fg = c.bg, bg = c.bg },

		-- Indicators (left vertical line)
		BufferLineIndicator = { fg = c.surface, bg = c.surface },
		BufferLineIndicatorVisible = { fg = c.highlight_med, bg = c.highlight_med },
		BufferLineIndicatorSelected = { fg = c.cyan, bg = c.bg },

		-- Close button
		BufferLineCloseButton = { fg = c.syntax_dim, bg = c.surface },
		BufferLineCloseButtonVisible = { fg = c.syntax_dim, bg = c.highlight_med },
		BufferLineCloseButtonSelected = { fg = c.muted, bg = c.bg },

		-- Modified indicator
		BufferLineModified = { fg = c.warning, bg = c.surface },
		BufferLineModifiedVisible = { fg = c.warning, bg = c.highlight_med },
		BufferLineModifiedSelected = { fg = c.warning, bg = c.bg },

		-- Duplicate buffer names
		BufferLineDuplicate = { fg = c.syntax_dim, bg = c.surface, italic = true },
		BufferLineDuplicateVisible = { fg = c.fg_dim, bg = c.highlight_med, italic = true },
		BufferLineDuplicateSelected = { fg = c.fg, bg = c.bg, bold = true, italic = true },

		-- Pick mode
		BufferLinePick = { fg = c.error, bg = c.surface, bold = true },
		BufferLinePickVisible = { fg = c.error, bg = c.highlight_med, bold = true },
		BufferLinePickSelected = { fg = c.error, bg = c.bg, bold = true },

		-- Numbers
		BufferLineNumbers = { fg = c.syntax_dim, bg = c.surface },
		BufferLineNumbersVisible = { fg = c.fg_dim, bg = c.highlight_med },
		BufferLineNumbersSelected = { fg = c.fg_dim, bg = c.bg, bold = true },

		-- Diagnostics
		BufferLineDiagnostic = { fg = c.syntax_dim, bg = c.surface },
		BufferLineDiagnosticVisible = { fg = c.fg_dim, bg = c.highlight_med },
		BufferLineDiagnosticSelected = { fg = c.fg_dim, bg = c.bg, bold = true },

		-- Error
		BufferLineError = { fg = c.error, bg = c.surface },
		BufferLineErrorVisible = { fg = c.error, bg = c.highlight_med },
		BufferLineErrorSelected = { fg = c.error, bg = c.bg, bold = true },
		BufferLineErrorDiagnostic = { fg = c.error, bg = c.surface },
		BufferLineErrorDiagnosticVisible = { fg = c.error, bg = c.highlight_med },
		BufferLineErrorDiagnosticSelected = { fg = c.error, bg = c.bg },

		-- Warning
		BufferLineWarning = { fg = c.warning, bg = c.surface },
		BufferLineWarningVisible = { fg = c.warning, bg = c.highlight_med },
		BufferLineWarningSelected = { fg = c.warning, bg = c.bg, bold = true },
		BufferLineWarningDiagnostic = { fg = c.warning, bg = c.surface },
		BufferLineWarningDiagnosticVisible = { fg = c.warning, bg = c.highlight_med },
		BufferLineWarningDiagnosticSelected = { fg = c.warning, bg = c.bg },

		-- Info
		BufferLineInfo = { fg = c.info, bg = c.surface },
		BufferLineInfoVisible = { fg = c.info, bg = c.highlight_med },
		BufferLineInfoSelected = { fg = c.info, bg = c.bg, bold = true },
		BufferLineInfoDiagnostic = { fg = c.info, bg = c.surface },
		BufferLineInfoDiagnosticVisible = { fg = c.info, bg = c.highlight_med },
		BufferLineInfoDiagnosticSelected = { fg = c.info, bg = c.bg },

		-- Hint
		BufferLineHint = { fg = c.hint, bg = c.surface },
		BufferLineHintVisible = { fg = c.hint, bg = c.highlight_med },
		BufferLineHintSelected = { fg = c.hint, bg = c.bg, bold = true },
		BufferLineHintDiagnostic = { fg = c.hint, bg = c.surface },
		BufferLineHintDiagnosticVisible = { fg = c.hint, bg = c.highlight_med },
		BufferLineHintDiagnosticSelected = { fg = c.hint, bg = c.bg },

		-- Tabs
		BufferLineTab = { fg = c.muted, bg = c.surface },
		BufferLineTabSelected = { fg = c.fg, bg = c.bg, bold = true },
		BufferLineTabClose = { fg = c.error, bg = c.surface },
		BufferLineTabSeparator = { fg = c.bg, bg = c.surface },
		BufferLineTabSeparatorSelected = { fg = c.bg, bg = c.bg },

		-- Offset
		BufferLineOffsetSeparator = { fg = c.surface, bg = c.bg },
		BufferLineGroupSeparator = { fg = c.surface, bg = c.bg },
		BufferLineGroupLabel = { fg = c.fg_dim, bg = c.bg, bold = true },

		-- Truncation
		BufferLineTruncMarker = { fg = c.muted, bg = c.bg },
	}
end

return M
