local M = {}

M.url = "https://github.com/nvim-neo-tree/neo-tree.nvim"

---@type theme_name.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    NeoTreeNormal              = { fg = c.fg, bg = c.bg},
    NeoTreeNormalNC            = { fg = c.fg_dim, bg = c.bg_dim },

    NeoTreeDimText             = { fg = c.fg_dim},
    NeoTreeFileName            = { fg = c.fg},

    NeoTreeGitModified  = { fg = c.magenta },
    NeoTreeGitStaged    = { fg = c.green },
    NeoTreeGitUntracked = { fg = c.yellow },

    NeoTreeTabActive           = { fg = c.cyan, bg = c.bg, bold = true },
    NeoTreeTabSeparatorActive  = { fg = c.cyan, bg = c.bg_dim },
    NeoTreeTabInactive         = { bg = opts.transparent and c.none or c.bg, fg = c.fg_dim },
    NeoTreeTabSeparatorInactive= { bg = opts.transparent and c.none or c.bg, fg = c.fg_dim },
  }
end

return M
