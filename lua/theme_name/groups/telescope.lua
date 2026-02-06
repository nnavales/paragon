local M = {}

M.url = "https://github.com/nvim-telescope/telescope.nvim"

---@type theme_name.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    TelescopeNormal         = { fg = c.fg, bg = c.surface },
    TelescopePromptNormal = { fg = c.fg, bg = c.bg }, 
    TelescopeResultsNormal= { fg = c.fg_dim, bg = c.surface},

    TelescopeSelection     = { fg = c.fg,     bg = c.highlight_high },
    TelescopeResultsComment = { fg = c.fg_dim},

    TelescopeMatching      = { fg = c.match, bold = true },
    TelescopeResultsIdentifier = { fg = c.fg },

    TelescopePromptBorder   = { fg = c.surface, bg = c.surface},
    TelescopeBorder         = { fg = c.surface, bg = c.surface},
    TelescopeResultsBorder = { fg = c.surface, bg = c.surface },
    TelescopePreviewBorder = { fg = c.surface, bg = c.surface },

    TelescopeTitle         = { fg = c.title,     bold = true },
    TelescopePromptTitle    = { fg = c.title, bg = c.overlay},
    TelescopeResultsTitle  = { fg = c.title,     bg = c.overlay },
    TelescopePreviewTitle  = { fg = c.title,     bg = c.overlay },

  }
end

return M
