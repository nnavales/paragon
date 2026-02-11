local M = {}

M.url = "https://github.com/romgrk/barbar.nvim"

---@type theme_name.HighlightsFn
function M.get(c, opts)
	return {
		BufferCurrent = { bg = c.bg, fg = c.fg },
		BufferCurrentADDED = { bg = c.bg, fg = c.git.add },
		BufferCurrentCHANGED = { bg = c.bg, fg = c.git.change },
		BufferCurrentDELETED = { bg = c.bg, fg = c.git.delete },
		BufferCurrentERROR = { bg = c.bg, fg = c.error },
		BufferCurrentHINT = { bg = c.bg, fg = c.hint },
		BufferCurrentINFO = { bg = c.bg, fg = c.info },
		BufferCurrentWARN = { bg = c.bg, fg = c.warning },
		BufferCurrentMod = { bg = c.bg, fg = c.warning },
		BufferCurrentTarget = { bg = c.bg, fg = c.error },
		BufferCurrentIndex = { bg = c.bg, fg = c.cyan },
		BufferCurrentSign = { bg = c.bg, fg = c.muted },

		BufferVisible = { bg = c.highlight_low, fg = c.fg },
		BufferVisibleADDED = { bg = c.highlight_low, fg = c.git.add },
		BufferVisibleCHANGED = { bg = c.highlight_low, fg = c.git.change },
		BufferVisibleDELETED = { bg = c.highlight_low, fg = c.git.delete },
		BufferVisibleERROR = { bg = c.highlight_low, fg = c.error },
		BufferVisibleHINT = { bg = c.highlight_low, fg = c.hint },
		BufferVisibleINFO = { bg = c.highlight_low, fg = c.info },
		BufferVisibleWARN = { bg = c.highlight_low, fg = c.warning },
		BufferVisibleMod = { bg = c.highlight_low, fg = c.warning },
		BufferVisibleTarget = { bg = c.highlight_low, fg = c.error },
		BufferVisibleIndex = { bg = c.highlight_low, fg = c.cyan },
		BufferVisibleSign = { bg = c.highlight_low, fg = c.muted },
		BufferVisibleIcon = { bg = c.highlight_low, fg = c.cyan },
		BufferVisibleNumber = { bg = c.highlight_low, fg = c.fg_dim },

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
		BufferAlternateIndex = { bg = c.surface, fg = c.fg_dim },
		BufferAlternateSign = { bg = c.surface, fg = c.muted },
		BufferAlternateIcon = { bg = c.surface, fg = c.fg_dim },
		BufferAlternateNumber = { bg = c.surface, fg = c.muted },

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
		BufferInactiveIndex = { bg = c.surface, fg = c.muted },
		BufferInactiveSign = { bg = c.surface, fg = c.muted },
		BufferInactiveIcon = { bg = c.surface, fg = c.muted },
		BufferInactiveNumber = { bg = c.surface, fg = c.muted },

		BufferTabpageFill = { bg = c.highlight_med, fg = c.muted },

		BufferTabpages = { bg = c.highlight_med, fg = c.none },
		BufferTabpagesSep = { bg = c.highlight_med, fg = c.muted },

		BufferOffset = { bg = c.surface, fg = c.fg_dim },
		BufferOffsetIndex = { bg = c.surface, fg = c.muted },
		BufferOffsetMod = { bg = c.surface, fg = c.warning },

		BufferSeparatorCurrent = { bg = c.bg, fg = c.bg },
		BufferSeparatorVisible = { bg = c.highlight_low, fg = c.highlight_low },
		BufferSeparatorInactive = { bg = c.surface, fg = c.surface },
		BufferSeparatorAlternate = { bg = c.surface, fg = c.surface },
	}
end

return M
