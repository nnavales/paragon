local M = {}

---@type theme_name.HighlightsFn
function M.get(c, opts)
	return {

		["@comment"] = "Comment",
		["@comment.nospell"] = { fg = c.muted, style = opts.styles.comments },
		["@comment.error"] = { fg = c.error },
		["@comment.warning"] = { fg = c.warning },
		["@comment.info"] = { fg = c.info },
		["@comment.hint"] = { fg = c.hint },
		["@comment.note"] = { fg = c.hint },
		["@comment.todo"] = { fg = c.hint },

		["@string"] = "String",
		["@string.documentation"] = "@string",
		["@string.regexp"] = { fg = c.magenta },
		["@string.escape"] = "@character",

		["@character"] = "Character",
		["@character.printf"] = "@character",
		["@character.special"] = "@character",

		["@constant"] = "Constant",
		["@constant.builtin"] = "@constant",
		["@constant.macro"] = "@constant",
		["@constant.regexp"] = "@constant",

		["@number"] = "Number",
		["@number.float"] = "Float",
		["@boolean"] = "Boolean",

		["@keyword"] = "Keyword",
		["@keyword.return"] = "@keyword",
		["@keyword.function"] = "@keyword",
		["@keyword.import"] = "@keyword",
		["@keyword.coroutine"] = "@keyword",
		["@keyword.operator"] = { fg = c.syntax_dim },

		["@keyword.conditional"] = "@keyword",
		["@keyword.repeat"] = "Repeat",
		["@keyword.exception"] = "Exception",
		["@keyword.debug"] = "Debug",
		["@keyword.storage"] = "StorageClass",
		["@keyword.directive.define"] = "Define",
		["@keyword.directive"] = "PreCondit",

		["@type.qualifier"] = "@keyword",
		["@label"] = "Label",

		["@function"] = "Function",
		["@function.call"] = "@function",
		["@function.builtin"] = "@function",
		["@function.method"] = "@function",
		["@function.method.call"] = "@function",
		["@function.macro"] = "@function",

		["@constructor"] = "Function",
		["@constructor.tsx"] = "@constructor",

		["@attribute"] = "PreProc",
		["@attribute.builtin"] = "@attribute",
		["@annotation"] = "PreProc",

		["@type"] = "Type",
		["@type.builtin"] = "@type",
		["@type.definition"] = "@type",

		["@property"] = { fg = c.semantic }, -- property

		["@tag"] = "Label",
		["@tag.builtin"] = "@tag",
		["@tag.attribute"] = { fg = c.teal },
		["@tag.delimiter.tsx"] = { fg = c.fg_dim },
		["@tag.delimiter"] = "Delimiter",

		["@variable"] = { fg = c.fg },
		["@variable.member"] = { fg = c.semantic }, -- @variable
		["@variable.parameter"] = "@variable",
		["@variable.parameter.builtin"] = "@variable",
		["@variable.builtin"] = { fg = c.fg, style = opts.styles.builtins },

		["@module"] = { fg = c.fg },
		["@module.builtin"] = { fg = c.fg },
		["@namespace.builtin"] = "@variable.builtin",

		["@identifier"] = "Identifier",

		["@operator"] = "Operator",

		["@punctuation.delimiter"] = "Delimiter",
		["@punctuation.bracket"] = "Delimiter",
		["@punctuation.special"] = { fg = c.syntax_dim },
		["@punctuation.bracket.regexp"] = "Delimiter",
		["@punctuation.special.markdown"] = { fg = c.syntax_dim },

		["@none"] = {},
		["@markup"] = "@none",

		["@markup.heading"] = "Title",

		["@markup.heading.1.markdown"] = { fg = c.green },
		["@markup.heading.2.markdown"] = { fg = c.cyan },
		["@markup.heading.3.markdown"] = { fg = c.teal },
		["@markup.heading.4.markdown"] = { fg = c.yellow },
		["@markup.heading.5.markdown"] = { fg = c.orange },
		["@markup.heading.6.markdown"] = { fg = c.magenta },

		["@markup.link"] = { fg = c.fg_dim },
		["@markup.link.label"] = { fg = c.cyan },
		["@markup.link.label.symbol"] = { fg = c.cyan },
		["@markup.link.url"] = { fg = c.yellow, underline = true },

		["@markup.list"] = { fg = c.green },
		["@markup.list.markdown"] = { fg = c.green, bold = true },
		["@markup.list.checked"] = { fg = c.fg },
		["@markup.list.unchecked"] = { fg = c.fg_dim },

		["@markup.raw"] = "String",
		["@markup.raw.markdown_inline"] = "@markup.raw",
		["@label.markdown"] = "@markup.raw",

		["@markup.italic"] = { italic = true },
		["@markup.strong"] = { bold = true },
		["@markup.emphasis"] = { italic = true },
		["@markup.underline"] = { underline = true },
		["@markup.strikethrough"] = { strikethrough = true },

		["@markup.environment"] = "Macro",
		["@markup.environment.name"] = "Type",
		["@markup.math"] = "Special",

		-- DIFF
		["@diff.plus"] = "DiffAdd",
		["@diff.minus"] = "DiffDelete",
		["@diff.delta"] = "DiffChange",

		-- Lenguage especifics.
		["@tag.tsx"] = "@tag",
		["@tag.javascript"] = "@tag",
	}
end

return M
