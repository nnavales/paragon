local M = {}

---@param c theme_name.Palette
---@param opts theme_name.Config
function M.get(c, opts)
	local ret = {

		-- =====================================================
		-- Core links / Defaults (NO TOCAR)
		-- Fallbacks semánticos base → grupos clásicos
		-- =====================================================
		-- DONE
		["@comment"] = "Comment",
		["@keyword"] = "Statement",
		["@keyword.return"] = "@keyword",
		["@string"] = "String",
		["@string.documentation"] = "@string",
		["@constant"] = "Constant",
		["@keyword.import"] = "Include",
		["@number"] = "Number",
		["@boolean"] = "Boolean",
		["@number.float"] = "Float",
		["@type"] = "Type",
		["@variable.member"] = "Identifier",
		["@keyword.function"] = "@keyword",
		["@constructor"] = "Function",
		["@attribute"] = "PreProc",
		["@operator"] = "Operator",
		["@string.escape"] = "Character",
		["@function.builtin"] = "Special",
		["@function"] = "Function",
		["@type.definition"] = "Typedef",
		["@type.builtin"] = "@type",

		["@punctuation.bracket"] = "Delimiter",
		["@punctuation.delimiter"] = { fg = c.subtle },
		["@variable"] = { fg = c.fg },
		["@variable.builtin"] = { fg = c.fg },
		["@variable.parameter"] = { fg = c.fg },
		["@nospell"] = { fg = c.fg },
		["@constant.builtin"] = { fg = c.fg },
		["@module"] = { fg = c.fg },

		-- -- TODO
		-- -- Annotations / attributes
		-- ["@annotation"] = "PreProc",
		--
		-- -- Literals
		-- ["@character"] = "Character",
		-- ["@character.printf"] = "SpecialChar",
		-- ["@character.special"] = "SpecialChar",
		--
		-- -- Constants
		-- ["@constant.macro"] = "Define",
		--
		-- -- Functions
		-- ["@function.call"] = "@function",
		-- ["@function.macro"] = "Macro",
		-- ["@function.method"] = "Function",
		-- ["@function.method.call"] = "@function.method",
		--
		-- -- Keywords
		-- ["@keyword.conditional"] = "Conditional",
		-- ["@keyword.debug"] = "Debug",
		-- ["@keyword.directive"] = "PreProc",
		-- ["@keyword.directive.define"] = "Define",
		-- ["@keyword.exception"] = "Exception",
		-- ["@keyword.repeat"] = "Repeat",
		-- ["@keyword.storage"] = "StorageClass",
		--
		-- -- Types / modules
		-- ["@type.qualifier"] = "@keyword",
		-- ["@namespace.builtin"] = "@variable.builtin",
		--
		-- -- Tags (HTML / JSX / etc)
		-- ["@tag"] = "Label",
		-- ["@tag.attribute"] = "@property",
		-- ["@tag.delimiter"] = "Delimiter",
		--
		-- -- Diff
		-- ["@diff.plus"] = "DiffAdd",
		-- ["@diff.minus"] = "DiffDelete",
		-- ["@diff.delta"] = "DiffChange",
		--
		-- -- Markup (generic)
		-- ["@markup"] = "@none",
		-- ["@markup.environment"] = "Macro",
		-- ["@markup.environment.name"] = "Type",
		-- ["@markup.heading"] = "Title",
		-- ["@markup.link.label"] = "SpecialChar",
		-- ["@markup.link.label.symbol"] = "Identifier",
		-- ["@markup.link.url"] = "Underlined",
		-- ["@markup.math"] = "Special",
		-- ["@markup.raw"] = "String",
		--
		-- -- Misc
		-- ["@none"] = {},
		--
		-- -- =====================================================
		-- -- Personalización / Overrides
		-- -- Acá sí vive el diseño del theme
		-- -- =====================================================
		--
		-- -- Comments (semantic)
		-- ["@comment.error"] = { fg = c.error },
		-- ["@comment.warning"] = { fg = c.warning },
		-- ["@comment.info"] = { fg = c.info },
		-- ["@comment.hint"] = { fg = c.hint },
		-- ["@comment.note"] = { fg = c.hint },
		-- ["@comment.todo"] = { fg = c.none },
		--
		-- -- Keywords
		--
		-- -- Functions / constructors
		-- ["@constructor.tsx"] = { fg = c.blue1 },
		--
		-- -- Variables
		-- ["@variable.parameter.builtin"] = { fg = c.yellow },
		--
		-- -- Properties / labels
		-- ["@property"] = { fg = c.green },
		-- ["@label"] = { fg = c.blue },
		--
		-- -- Operators & punctuation
		-- ["@punctuation.special"] = { fg = c.blue },
		-- ["@punctuation.special.markdown"] = { fg = c.yellow },
		--
		-- -- Strings
		-- ["@string.regexp"] = { fg = c.blue },
		--
		-- -- Types
		-- ["@module.builtin"] = { fg = c.red },
		--
		-- -- Markup styling
		-- ["@markup.emphasis"] = { italic = true },
		-- ["@markup.italic"] = { italic = true },
		-- ["@markup.strong"] = { bold = true },
		-- ["@markup.underline"] = { underline = true },
		-- ["@markup.strikethrough"] = { strikethrough = true },
		--
		-- ["@markup.link"] = { fg = c.cyan },
		-- ["@markup.list"] = { fg = c.blue1 },
		-- ["@markup.list.checked"] = { fg = c.green },
		-- ["@markup.list.unchecked"] = { fg = c.blue },
		-- ["@markup.list.markdown"] = { fg = c.yellow, bold = true },
		-- ["@markup.raw.markdown_inline"] = { bg = c.bright_black, fg = c.blue },
		--
		-- -- Tags (frontend)
		-- ["@tag.tsx"] = { fg = c.red },
		-- ["@tag.javascript"] = { fg = c.red },
		-- ["@tag.delimiter.tsx"] = { fg = c.blue },
	}

	return ret
end

return M
