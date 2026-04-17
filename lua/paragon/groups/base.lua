local M = {}

---@type paragon.HighlightsFn
function M.get(c, opts)
	return {
		Statement = { fg = c.purple, style = opts.styles.keywords },
		Conditional = { fg = c.purple, style = opts.styles.keywords },
		Repeat = { fg = c.purple, style = opts.styles.keywords },
		Label = { fg = c.purple },
		Keyword = { fg = c.purple, style = opts.styles.keywords },
		Exception = { fg = c.purple, style = opts.styles.keywords },
		PreProc = { fg = c.orange },
		Include = { fg = c.purple, style = opts.styles.keywords },
		StorageClass = { fg = c.purple, style = opts.styles.keywords },
		Structure = { fg = c.purple, style = opts.styles.keywords },

		Define = { fg = c.orange },
		Macro = { fg = c.orange },
		PreCondit = { fg = c.orange },

		String = { fg = c.green },
		Constant = { fg = c.yellow },
		Number = { fg = c.yellow },
		Float = { fg = c.yellow },
		Boolean = { fg = c.yellow },
		Character = { fg = c.yellow },
		Special = { fg = c.yellow },
		SpecialChar = { fg = c.yellow },

		Function = { fg = c.teal, style = opts.styles.functions },
		Identifier = { fg = c.fg },

		Type = { fg = c.cyan, style = opts.styles.types },

		Operator = { fg = c.syntax_dim },
		Delimiter = { fg = c.syntax_dim },

		Comment = { fg = c.muted, style = opts.styles.comments },
		SpecialComment = { fg = c.muted, style = opts.styles.comments },

		Error = { fg = c.error },
		Debug = { fg = c.info },
		Todo = { fg = c.hint },

		Normal = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
		NormalNC = {
			fg = c.fg,
			bg = opts.transparent and c.none or (opts.dim and c.bg_dim or c.bg),
		},
		NormalSB = { fg = c.fg, bg = c.bg_dim },
		Conceal = { fg = c.fg_dim },
		NonText = { fg = c.fg_dim },
		SpecialKey = { fg = c.fg_dim },
		Whitespace = { fg = c.fg_dim },
		EndOfBuffer = { fg = c.fg_dim },

		Cursor = { bg = c.fg, fg = c.bg },
		lCursor = { bg = c.fg, fg = c.bg },
		CursorIM = { bg = c.fg, fg = c.bg },
		CursorLine = { bg = c.highlight_low },
		CursorColumn = { bg = c.highlight_low },
		ColorColumn = { bg = c.highlight_low },

		LineNr = { fg = c.fg_dim },
		LineNrAbove = { fg = c.fg_dim },
		LineNrBelow = { fg = c.fg_dim },
		CursorLineNr = { fg = c.fg, bold = true },

		SignColumn = { fg = c.fg_dim, bg = opts.transparent and c.none or c.none },
		SignColumnSB = { fg = c.fg_dim, bg = opts.transparent and c.none or c.none },
		Folded = { fg = c.purple, bg = opts.transparent and c.none or c.bg },
		FoldColumn = { fg = c.fg_dim, bg = opts.transparent and c.none or c.bg },

		VertSplit = { fg = opts.borders and c.overlay or c.bg },
		WinSeparator = { fg = opts.borders and c.overlay or c.bg },

		NormalFloat = { fg = c.fg, bg = c.surface },
		FloatBorder = { fg = opts.borders and c.overlay or c.surface, bg = c.surface },
		FloatTitle = { fg = c.cyan, bg = c.overlay },

		Pmenu = { bg = c.surface, fg = c.float_dim },
		PmenuSel = { bg = c.highlight_high },
		PmenuSbar = { bg = c.overlay },
		PmenuThumb = { bg = c.float_dim },
		PmenuMatch = { bg = c.surface, fg = c.fg },
		PmenuMatchSel = { bg = c.highlight_high, fg = c.fg },
		WildMenu = { bg = c.surface, fg = c.float_dim },

		StatusLine = { fg = c.fg, bg = c.surface },
		StatusLineNC = { fg = c.fg_dim, bg = c.surface },
		WinBar = "StatusLine",
		WinBarNC = "StatusLineNC",

		TabLine = { bg = opts.transparent and c.none or c.surface, fg = c.fg_dim },
		TabLineFill = { bg = opts.transparent and c.none or c.surface },
		TabLineSel = { fg = c.cyan, bg = opts.transparent and c.none or c.bg },
		Title = { fg = c.cyan, bold = true },

		Search = { bg = c.search_bg, fg = c.search },
		IncSearch = { bg = c.search, fg = c.bg },
		CurSearch = { bg = c.search, fg = c.bg },
		Substitute = { bg = c.substitute, fg = c.bg },
		MatchParen = { fg = c.teal, bold = true },

		Visual = { bg = c.highlight_high },
		VisualNOS = { bg = c.highlight_high },

		DiffAdd = { bg = c.diff.add },
		DiffChange = { bg = c.diff.change },
		DiffDelete = { bg = c.diff.delete, fg = c.git.delete, nocombine = true },
		DiffText = { bg = c.diff.text },

		diffAdded = { fg = c.git.add },
		diffRemoved = { fg = c.git.delete },
		diffChanged = { fg = c.git.change },
		diffOldFile = { fg = c.fg_dim, bg = c.diff.delete },
		diffNewFile = { fg = c.fg_dim, bg = c.diff.add },
		diffLine = { fg = c.muted },
		diffFile = { fg = c.cyan },
		diffIndexLine = { fg = c.yellow },

		ModeMsg = { fg = c.fg, bold = true },
		MsgArea = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
		MoreMsg = { fg = c.info },
		Question = { fg = c.hint },
		ErrorMsg = { fg = c.error },
		WarningMsg = { fg = c.warning },

		DiagnosticError = { fg = c.error },
		DiagnosticWarn = { fg = c.warning },
		DiagnosticInfo = { fg = c.info },
		DiagnosticHint = { fg = c.hint },
		DiagnosticUnnecessary = { fg = c.fg_dim },
		DiagnosticVirtualTextError = { fg = c.error },
		DiagnosticVirtualTextWarn = { fg = c.warning },
		DiagnosticVirtualTextInfo = { fg = c.info },
		DiagnosticVirtualTextHint = { fg = c.hint },

		DiagnosticUnderlineError = { undercurl = true, sp = c.error },
		DiagnosticUnderlineWarn = { undercurl = true, sp = c.warning },
		DiagnosticUnderlineInfo = { undercurl = true, sp = c.info },
		DiagnosticUnderlineHint = { undercurl = true, sp = c.hint },

		LspReferenceText = { bg = c.highlight_high },
		LspReferenceRead = { bg = c.highlight_high },
		LspReferenceWrite = { bg = c.highlight_high },
		LspSignatureActiveParameter = { bg = c.highlight_high, bold = true },
		LspCodeLens = { fg = c.muted },
		LspInlayHint = { bg = c.highlight_med, fg = c.fg_dim },
		LspInfoBorder = { fg = opts.borders and c.overlay or c.surface, bg = c.surface },

		SpellBad = { sp = c.error, undercurl = true },
		SpellCap = { sp = c.warning, undercurl = true },
		SpellLocal = { sp = c.info, undercurl = true },
		SpellRare = { sp = c.hint, undercurl = true },

		qfFileName = { fg = c.cyan },
		qfLineNr = { fg = c.fg_dim },
		QuickFixLine = { bg = c.highlight_med, bold = true },

		Directory = { fg = c.cyan },
		Underlined = { underline = true },
		Bold = { bold = true, fg = c.fg },
		Italic = { italic = true, fg = c.fg },

		healthError = { fg = c.error },
		healthSuccess = { fg = c.success },
		healthWarning = { fg = c.warning },

		helpExample = { fg = c.muted },
		helpCommand = { fg = c.green },
		ComplHint = { fg = c.muted },
		debugPC = { bg = c.overlay },
		debugBreakpoint = { fg = c.info },

		RedrawDebugClear = { fg = c.bg, bg = c.yellow },
		RedrawDebugComposed = { fg = c.bg, bg = c.teal },
		RedrawDebugRecompose = { fg = c.bg, bg = c.red },
		StatusLineTerm = { fg = c.fg, bg = c.teal },
		StatusLineTermNC = { fg = c.fg_dim, bg = c.teal },
		NvimInternalError = { fg = c.error },
		LspCodeLensSeparator = { fg = c.fg_dim },
		Added = { fg = c.git.add },
		Changed = { fg = c.git.change },
		Removed = { fg = c.git.delete },
		PmenuExtra = { fg = c.muted, bg = c.surface },
		PmenuExtraSel = { fg = c.fg_dim, bg = c.overlay },
		PmenuKind = { fg = c.cyan, bg = c.surface },
		PmenuKindSel = { fg = c.fg_dim, bg = c.overlay },
	}
end

return M
