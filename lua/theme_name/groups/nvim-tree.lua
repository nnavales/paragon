local M = {}

M.url = "https://github.com/nvim-tree/nvim-tree.lua"

---@type theme_name.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    NvimTreeFolderIcon   = "Directory",
    NvimTreeGitDeleted   = { fg = c.git.delete },
    NvimTreeGitDirty     = { fg = c.git.change },
    NvimTreeGitNew       = { fg = c.git.add },

    NvimTreeImageFile    = { fg = c.fg_dim},
    NvimTreeNormal       = { fg = c.fg, bg = c.none},
    NvimTreeNormalNC     = { fg = c.fg_dim, bg = c.bg_dim },
    NvimTreeOpenedFile   = { bg = c.highlight_high },

    NvimTreeIndentMarker = { fg = c.fg},
    NvimTreeRootFolder   = { fg = c.fg_dim, bold = true },
    NvimTreeSpecialFile  = { fg = c.fg_dim, underline = true },
    NvimTreeSymlink      = { fg = c.yellow},
    NvimTreeWinSeparator = { fg = c.surface, bg = c.surface },
  }
end

return M
