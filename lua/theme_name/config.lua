local M = {}

---@class theme_name.Config
---@field transparent boolean
---@field terminal_colors boolean
---@field italic_comments boolean

M.defaults = {
	transparent = false, -- Enable this to disable setting the background color
	terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
	italic_comments = true, -- Enable this to get italic comments
}

---@type theme_name.Config
M.options = nil

---@param options? theme_name.Config
function M.setup(options)
	M.options = vim.tbl_deep_extend("force", {}, M.defaults, options or {})
end

function M.get()
	return M.options or M.defaults
end

return M

