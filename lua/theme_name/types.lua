---@class theme_name.Palette
---@field green string
---@field red string
---@field orange string
---@field yellow string
---@field cyan string
---@field teal string
---@field muted string
---@field syntax_dim string
---@field fg string
---@field bg string
---@field fg_dim string
---@field bg_dim string
---@field highlight_low string
---@field highlight_med string
---@field highlight_high string
---@field surface string
---@field overlay string

---@class theme_name.ColorScheme: theme_name.Palette
---@field none string
---@field error string
---@field warning string
---@field info string
---@field hint string
---@field diff table<string, string>
---@field terminal? table<string, string>

---@class theme_name.Highlight: vim.api.keyset.highlight
---@field style? vim.api.keyset.highlight

---@alias theme_name.Highlights table<string, theme_name.Highlight|string>
---@alias theme_name.HighlightsFn fun(colors: theme_name.ColorScheme, opts:theme_name.Config):theme_name.Highlights

return {}
