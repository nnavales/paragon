local M = {}

M.url = "https://github.com/hrsh7th/nvim-cmp"

---@type theme_name.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    CmpDocumentation       = { fg = c.surface, bg = c.surface},
    CmpDocumentationBorder = { fg = c.surface, bg = c.surface},
    CmpGhostText           = { fg = c.fg_dim },
    CmpItemAbbr            = { fg = c.fg_dim, bg = c.none},
    CmpItemAbbrDeprecated  = { fg = c.fg_dim, bg = c.none, strikethrough = true },
    --
    CmpItemAbbrMatch       = { fg = c.fg, bg = c.none },
    CmpItemAbbrMatchFuzzy  = { fg = c.fg, bg = c.none },
    CmpItemKindCodeium     = { fg = c.fg, bg = c.none },
    CmpItemKindCopilot     = { fg = c.fg, bg = c.none },
    CmpItemKindSupermaven  = { fg = c.fg, bg = c.none },
    CmpItemKindDefault     = { fg = c.fg, bg = c.none },
    CmpItemKindTabNine     = { fg = c.fg, bg = c.none },
    CmpItemMenu            = { fg = c.fg, bg = c.none },
  }

	require("theme_name.groups.kinds").kinds(ret, "CmpItemKind%s")
	return ret
end

return M
