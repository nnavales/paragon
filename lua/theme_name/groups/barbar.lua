local M = {}

M.url = "https://github.com/romgrk/barbar.nvim"

---@type theme_name.HighlightsFn
function M.get(c, opts)
	return {
		BufferCurrent = { bg = c.bg, fg = c.fg, bold = true },
		BufferCurrentADDED = { bg = c.bg, fg = c.git.add, bold = true },
		BufferCurrentCHANGED = { bg = c.bg, fg = c.git.change, bold = true },
		BufferCurrentDELETED = { bg = c.bg, fg = c.git.delete, bold = true },
		BufferCurrentERROR = { bg = c.bg, fg = c.error, bold = true },
		BufferCurrentHINT = { bg = c.bg, fg = c.hint, bold = true },
		BufferCurrentINFO = { bg = c.bg, fg = c.info, bold = true },
		BufferCurrentWARN = { bg = c.bg, fg = c.warning, bold = true },
		BufferCurrentMod = { bg = c.bg, fg = c.warning, bold = true },
		BufferCurrentTarget = { bg = c.bg, fg = c.error, bold = true },
		BufferCurrentIndex = { bg = c.bg, fg = c.fg_dim, bold = true },
		BufferCurrentSign = { bg = c.bg, fg = c.cyan },
		BufferCurrentIcon = { bg = c.bg, fg = c.cyan },
		BufferCurrentNumber = { bg = c.bg, fg = c.fg_dim, bold = true },

		BufferVisible = { bg = c.highlight_med, fg = c.fg },
		BufferVisibleADDED = { bg = c.highlight_med, fg = c.git.add },
		BufferVisibleCHANGED = { bg = c.highlight_med, fg = c.git.change },
		BufferVisibleDELETED = { bg = c.highlight_med, fg = c.git.delete },
		BufferVisibleERROR = { bg = c.highlight_med, fg = c.error },
		BufferVisibleHINT = { bg = c.highlight_med, fg = c.hint },
		BufferVisibleINFO = { bg = c.highlight_med, fg = c.info },
		BufferVisibleWARN = { bg = c.highlight_med, fg = c.warning },
		BufferVisibleMod = { bg = c.highlight_med, fg = c.warning },
		BufferVisibleTarget = { bg = c.highlight_med, fg = c.error },
		BufferVisibleIndex = { bg = c.highlight_med, fg = c.fg_dim },
		BufferVisibleSign = { bg = c.highlight_med, fg = c.fg_dim },
		BufferVisibleIcon = { bg = c.highlight_med, fg = c.fg_dim },
		BufferVisibleNumber = { bg = c.highlight_med, fg = c.fg_dim },

		BufferAlternate = { bg = c.surface, fg = c.fg_dim },
		BufferAlternateADDED = { bg = c.surface, fg = c.git.add },
		BufferAlternateCHANGED = { bg = c.surface, fg = c.git.change },
		BufferAlternateDELETED = { bg = c.surface, fg = c.git.delete },
		BufferAlternateERROR = { bg = c.surface, fg = c.error },
		BufferAlternateHINT = { bg = c.surface, fg = c.hint },
		BufferAlternateINFO = { bg = c.surface, fg = c.info },
		BufferAlternateWARN = { bg = c.surface, fg = c.warning },
		BufferAlternateMod = { bg = c.surface, fg = c.warning },
		BufferAlternateTarget = { bg = c.surface, fg = c.error },
		BufferAlternateIndex = { bg = c.surface, fg = c.syntax_dim },
		BufferAlternateSign = { bg = c.surface, fg = c.syntax_dim },
		BufferAlternateIcon = { bg = c.surface, fg = c.fg_dim },
		BufferAlternateNumber = { bg = c.surface, fg = c.syntax_dim },

		BufferInactive = { bg = c.surface, fg = c.muted },
		BufferInactiveADDED = { bg = c.surface, fg = c.git.add },
		BufferInactiveCHANGED = { bg = c.surface, fg = c.git.change },
		BufferInactiveDELETED = { bg = c.surface, fg = c.git.delete },
		BufferInactiveERROR = { bg = c.surface, fg = c.error },
		BufferInactiveHINT = { bg = c.surface, fg = c.hint },
		BufferInactiveINFO = { bg = c.surface, fg = c.info },
		BufferInactiveWARN = { bg = c.surface, fg = c.warning },
		BufferInactiveMod = { bg = c.surface, fg = c.warning },
		BufferInactiveTarget = { bg = c.surface, fg = c.error },
		BufferInactiveIndex = { bg = c.surface, fg = c.syntax_dim },
		BufferInactiveSign = { bg = c.surface, fg = c.syntax_dim },
		BufferInactiveIcon = { bg = c.surface, fg = c.syntax_dim },
		BufferInactiveNumber = { bg = c.surface, fg = c.syntax_dim },

		BufferTabpageFill = { bg = c.bg, fg = c.syntax_dim },
		BufferTabpages = { bg = c.bg, fg = c.cyan },
		BufferTabpagesSep = { bg = c.bg, fg = c.muted },

		BufferOffset = { bg = c.surface, fg = c.fg_dim },
		BufferOffsetIndex = { bg = c.surface, fg = c.muted },
		BufferOffsetMod = { bg = c.surface, fg = c.warning },

		BufferSeparatorCurrent = { bg = c.bg, fg = c.bg },
		BufferSeparatorVisible = { bg = c.bg, fg = c.highlight_med },
		BufferSeparatorInactive = { bg = c.bg, fg = c.surface },
		BufferSeparatorAlternate = { bg = c.bg, fg = c.surface },
	}
end

return M
