local M = {}

M.url = "https://github.com/akinsho/bufferline.nvim"

---@type theme_name.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {

        BufferLineFill = { bg = c.surface },

        BufferLineCloseButtonSelected = {fg = c.fg_dim,bg = c.surface,},

        BufferLineBackground = {fg = c.fg_dim,bg = c.surface,},
        BufferLineCloseButton = {fg = c.fg_dim,bg = c.surface,},
        BufferLineBufferVisible = {fg = c.surface, bg = c.surface,},

        BufferLineSeparator = {fg = c.surface, bg = c.surface,},
        BufferLineBufferSelected = {fg = c.cyan, bg = c.surface,bold = true,},

        BufferLineIndicatorSelected = { fg = c.git.change },
        BufferLineSeparatorSelected = {fg = c.fg,bg = c.fg,},

        BufferLineModified = {fg = c.fg, bg = c.none,},
        BufferLineModifiedSelected = { fg = c.fg, bg = c.none},

        BufferLineTabSelected = {fg = c.fg,bg = c.surface,bold = true,},

  }
end

return M
