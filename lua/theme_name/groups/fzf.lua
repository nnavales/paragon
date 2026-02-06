local M = {}

M.url = "https://github.com/ibhagwan/fzf-lua"

---@type theme_name.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    FzfLuaFzfSeparator  = { fg = c.surface, bg = c.surface },
    FzfLuaFzfPointer    = { fg = c.cyan, bold = true },
    FzfLuaFzfNormal     = { fg = c.fg},

    FzfLuaDirPart       = { fg = c.cyan},
    FzfLuaBorder        = { fg = c.surface, bg = c.surface},
    FzfLuaNormal        = { fg = c.fg, bg = c.surface},
    FzfLuaPreviewTitle  = { fg = c.fg, bg = c.overlay },
    FzfLuaTitle         = { fg = c.cyan , bg = c.overlay },
    FzfLuaCursor        = "IncSearch",
    FzfLuaFilePart      = "FzfLuaFzfNormal",
    FzfLuaFzfCursorLine = "Visual",
    FzfLuaPath          = "Directory",
    FzfLuaHeaderBind    = "@punctuation.special",
    FzfLuaHeaderText    = "Title",

  }
end

return M
