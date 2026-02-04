local M = {}

---@type theme_name.HighlightsFn
function M.get(c, opts)
	return {
		-- CORE SYNTAX (6 semantic colors)

		-- Keywords & Control Flow (green/green)
		Statement = { fg = c.green },
		Conditional = { fg = c.green },
		Repeat = { fg = c.green },
		Label = { fg = c.green },
		Keyword = { fg = c.green, style = opts.styles.keywords },
		Exception = { fg = c.green },
		PreProc = { fg = c.magenta },
		Include = { fg = c.green },
		StorageClass = { fg = c.green },
		Structure = { fg = c.green },

		Define = { fg = c.magenta },
		Macro = { fg = c.magenta },
		PreCondit = { fg = c.magenta },

		-- Literals (orange/orange for strings, yellow/gold for constants/numbers)
		String = { fg = c.orange },
		Constant = { fg = c.yellow },
		Number = { fg = c.yellow },
		Float = { fg = c.yellow },
		Boolean = { fg = c.yellow },
		Character = { fg = c.yellow },
		Special = { fg = c.yellow },
		SpecialChar = { fg = c.yellow },

		-- Functions & Identifiers (cyan/cyan)
		Function = { fg = c.cyan },
		Identifier = { fg = c.fg },

		-- Types (teal/teal)
		Type = { fg = c.teal },

		-- Operators & Delimiters (dim/gray)
		Operator = { fg = c.dim },
		Delimiter = { fg = c.dim },

		-- Comments (muted/gray)
		Comment = { fg = c.muted, style = opts.styles.comments },
		SpecialComment = { fg = c.muted, italic = true },

		-- Errors & Diagnostics (red/red)
		Error = { fg = c.error },
		Debug = { fg = c.info },
		Todo = { fg = c.hint },

		-- UI: BASE EDITOR ELEMENTS

		-- Background & Text
		Normal = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
		NormalNC = { fg = c.fg, bg = opts.transparent and c.none or c.bg_dim },
		NormalSB = { fg = c.fg, bg = opts.transparent and c.none or c.bg_dim },
		Conceal = { fg = c.fg_dim },
		NonText = { fg = c.dim },
		SpecialKey = { fg = c.dim },
		Whitespace = { fg = c.dim },
		EndOfBuffer = { fg = c.fg_dim },

		-- Cursor & CursorLine
		Cursor = { bg = c.fg, fg = c.bg },
		lCursor = { bg = c.fg, fg = c.bg },
		CursorIM = { bg = c.fg, fg = c.bg },
		CursorLine = { bg = c.highlight_low },
		CursorColumn = { bg = c.highlight_low },
		ColorColumn = { bg = c.highlight_low },

		-- Line Numbers
		LineNr = { fg = c.fg_dim },
		LineNrAbove = { fg = c.fg_dim },
		LineNrBelow = { fg = c.fg_dim },
		CursorLineNr = { fg = c.fg, bold = true },

		-- Sign Column & Folds
		SignColumn = { fg = c.fg_dim },
		SignColumnSB = { fg = c.fg_dim },
		Folded = { fg = c.green, bg = opts.transparent and c.none or c.bg },
		FoldColumn = { fg = c.fg_dim },

		-- Windows & Separators
		VertSplit = { fg = opts.transparent and c.none or c.bg },
		WinSeparator = { fg = opts.transparent and c.none or c.bg },

		-- UI: FLOATS & POPUPS

		NormalFloat = { fg = c.fg, bg = c.surface },
		FloatBorder = { fg = c.surface, bg = c.surface },
		FloatTitle = { fg = c.cyan, bg = c.overlay },

		-- Popup Menu
		Pmenu = { bg = c.surface, fg = c.fg_dim },
		PmenuSel = { bg = c.highlight_high },
		PmenuSbar = { bg = c.overlay },
		PmenuThumb = { bg = c.dim },
		PmenuMatch = { bg = c.surface, fg = c.fg },
		PmenuMatchSel = { bg = c.highlight_high, fg = c.fg },
		WildMenu = { bg = c.surface, fg = c.fg_dim },

		-- UI: STATUS & TAB LINES

		StatusLine = { fg = c.fg, bg = opts.transparent and c.none or c.overlay },
		StatusLineNC = { fg = c.fg_dim, bg = opts.transparent and c.none or c.overlay },
		WinBar = "StatusLine",
		WinBarNC = "StatusLineNC",

		TabLine = { bg = opts.transparent and c.none or c.overlay, fg = c.fg_dim },
		TabLineFill = { bg = opts.transparent and c.none or c.overlay },
		TabLineSel = { fg = c.cyan, bg = opts.transparent and c.none or c.bg },
		Title = { fg = c.cyan, bold = true },

		-- SEARCH, VISUAL & DIFF

		-- Search
		Search = { bg = c.highlight_med, fg = c.fg },
		IncSearch = { bg = c.orange, fg = c.bg, bold = true },
		CurSearch = "IncSearch",
		Substitute = { bg = c.orange, fg = c.bg },
		MatchParen = { bg = c.highlight_high, fg = c.yellow, bold = true },

		-- Visual Mode
		Visual = { bg = c.highlight_high },
		VisualNOS = { bg = c.highlight_high },

		-- Diff (git-style)
		DiffAdd = { bg = c.diff.add },
		DiffChange = { bg = c.diff.change },
		DiffDelete = { bg = c.diff.delete, fg = c.git.delete, nocombine = true },
		DiffText = { bg = c.diff.text },

		-- Legacy diff (lowercase - rarely used)
		diffAdded = { fg = c.git.add },
		diffRemoved = { fg = c.git.delete },
		diffChanged = { fg = c.git.change },
		diffOldFile = { fg = c.fg_dim, bg = c.diff.delete },
		diffNewFile = { fg = c.fg_dim, bg = c.diff.add },
		diffLine = { fg = c.muted },
		diffFile = { fg = c.cyan },
		diffIndexLine = { fg = c.yellow },

		-- MESSAGES & QUESTIONS

		ModeMsg = { fg = c.fg, bold = true },
		MsgArea = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
		MoreMsg = { fg = c.info },
		Question = { fg = c.hint },
		ErrorMsg = { fg = c.error },
		WarningMsg = { fg = c.warning },

		-- LSP & DIAGNOSTICS

		-- Diagnostics (virtual text)
		DiagnosticError = { fg = c.error },
		DiagnosticWarn = { fg = c.warning },
		DiagnosticInfo = { fg = c.info },
		DiagnosticHint = { fg = c.hint },
		DiagnosticUnnecessary = { fg = c.dim },
		DiagnosticVirtualTextError = { fg = c.error },
		DiagnosticVirtualTextWarn = { fg = c.warning },
		DiagnosticVirtualTextInfo = { fg = c.info },
		DiagnosticVirtualTextHint = { fg = c.hint },

		-- Diagnostics (underlines)
		DiagnosticUnderlineError = { undercurl = true, sp = c.error },
		DiagnosticUnderlineWarn = { undercurl = true, sp = c.warning },
		DiagnosticUnderlineInfo = { undercurl = true, sp = c.info },
		DiagnosticUnderlineHint = { undercurl = true, sp = c.hint },

		-- LSP Reference Highlights
		LspReferenceText = { bg = c.highlight_high },
		LspReferenceRead = { bg = c.highlight_high },
		LspReferenceWrite = { bg = c.highlight_high },
		LspSignatureActiveParameter = { bg = c.highlight_high, bold = true },
		LspCodeLens = { fg = c.muted },
		LspInlayHint = { bg = c.highlight_med, fg = c.dim },
		LspInfoBorder = { fg = c.dim, bg = opts.transparent and c.none or c.overlay },

		-- SPELL CHECKING

		SpellBad = { sp = c.error, undercurl = true },
		SpellCap = { sp = c.warning, undercurl = true },
		SpellLocal = { sp = c.info, undercurl = true },
		SpellRare = { sp = c.hint, undercurl = true },

		-- QUICKFIX

		qfFileName = { fg = c.cyan },
		qfLineNr = { fg = c.fg_dim },
		QuickFixLine = { bg = c.highlight_med, bold = true },

		-- MISC & HELP

		Directory = { fg = c.cyan },
		Underlined = { underline = true },
		Bold = { bold = true, fg = c.fg },
		Italic = { italic = true, fg = c.fg },

		healthError = { fg = c.error },
		healthSuccess = { fg = c.success },
		healthWarning = { fg = c.warning },

		-- Legacy/Obsolete (rarely used)
		helpExample = { fg = c.muted },
		helpCommand = { fg = c.green },
		ComplHint = { fg = c.muted },
		debugPC = { bg = c.overlay },
		debugBreakpoint = { fg = c.info },
	}
end

return M
