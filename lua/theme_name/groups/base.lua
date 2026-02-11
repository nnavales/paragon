local M = {}

---@type theme_name.HighlightsFn
function M.get(c, opts)
	return {
		Statement = { fg = c.green, style = opts.styles.keywords },
		Conditional = { fg = c.green, style = opts.styles.keywords },
		Repeat = { fg = c.green, style = opts.styles.keywords },
		Label = { fg = c.green },
		Keyword = { fg = c.green, style = opts.styles.keywords },
		Exception = { fg = c.green, style = opts.styles.keywords },
		PreProc = { fg = c.magenta },
		Include = { fg = c.green, style = opts.styles.keywords },
		StorageClass = { fg = c.green, style = opts.styles.keywords },
		Structure = { fg = c.green, style = opts.styles.keywords },

		Define = { fg = c.magenta },
		Macro = { fg = c.magenta },
		PreCondit = { fg = c.magenta },

		String = { fg = c.orange },
		Constant = { fg = c.yellow },
		Number = { fg = c.yellow },
		Float = { fg = c.yellow },
		Boolean = { fg = c.yellow },
		Character = { fg = c.yellow },
		Special = { fg = c.yellow },
		SpecialChar = { fg = c.yellow },

		Function = { fg = c.cyan, style = opts.styles.functions },
		Identifier = { fg = c.fg },

		Type = { fg = c.teal, style = opts.styles.types },

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

		SignColumn = { fg = c.fg_dim, bg = opts.transparent and c.none or c.bg },
		SignColumnSB = { fg = c.fg_dim, bg = opts.transparent and c.none or c.bg },
		Folded = { fg = c.green, bg = opts.transparent and c.none or c.bg },
		FoldColumn = { fg = c.fg_dim, bg = opts.transparent and c.none or c.bg },

		VertSplit = { fg = c.bg },
		WinSeparator = { fg = c.bg },

		NormalFloat = { fg = c.fg, bg = c.surface },
		FloatBorder = { fg = c.surface, bg = c.surface },
		FloatTitle = { fg = c.cyan, bg = c.overlay },

		Pmenu = { bg = c.surface, fg = c.fg_dim },
		PmenuSel = { bg = c.highlight_high },
		PmenuSbar = { bg = c.overlay },
		PmenuThumb = { bg = c.fg_dim },
		PmenuMatch = { bg = c.surface, fg = c.fg },
		PmenuMatchSel = { bg = c.highlight_high, fg = c.fg },
		WildMenu = { bg = c.surface, fg = c.fg_dim },

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
		MatchParen = { fg = c.cyan, bg = c.highlight_med, bold = true, underline = true },

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
		LspInfoBorder = { fg = c.fg_dim, bg = c.overlay },

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
	}
end

return M
