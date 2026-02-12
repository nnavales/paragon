local M = {}

M.url = "https://github.com/nvimdev/lspsaga.nvim"

---@type theme_name.HighlightsFn
function M.get(c, opts)
	return {
		DefinitionCount = { fg = c.magenta },
		DefinitionIcon = { fg = c.cyan },
		ReferencesCount = { fg = c.magenta },
		ReferencesIcon = { fg = c.cyan },
		TargetWord = { fg = c.cyan, bold = true },

		-- Bordes de ventanas flotantes
		LspFloatWinBorder = { fg = opts.borders and c.overlay or c.surface },
		LspFloatWinNormal = { bg = c.surface },

		-- Títulos y bordes específicos
		LspSagaBorderTitle = { fg = c.cyan, bold = true },
		LspSagaCodeActionBorder = { fg = c.cyan },
		LspSagaCodeActionContent = { fg = c.magenta },
		LspSagaCodeActionTitle = { fg = c.info, bold = true },
		LspSagaDefPreviewBorder = { fg = c.green },
		LspSagaFinderSelection = { fg = c.search, bold = true },
		LspSagaHoverBorder = { fg = c.cyan },
		LspSagaRenameBorder = { fg = c.green },
		LspSagaSignatureHelpBorder = { fg = c.error },

		-- Diagnósticos (linkeados a los grupos base)
		DiagnosticInformation = "DiagnosticInfo",
		DiagnosticWarning = "DiagnosticWarn",
	}
end

return M
