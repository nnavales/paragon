local M = {}

---@class theme_name.Config
---@field transparent boolean
---@field terminal_colors boolean
---@field styles table
M.defaults = {
	transparent = false,
	dim = true,
	borders = true,
	styles = {
		keywords = {}, -- if, for, return, break, continue
		functions = {}, -- foo(), bar()
		types = {}, -- class, struct, int, enum
		comments = { italic = true }, -- -- comments
		builtins = { italic = true }, -- print(), self, true, false
	},
	terminal_colors = true, -- configure the colors used when opening a `:terminal` in Neovim

	---@type table<string, boolean>
	-- Override plugin highlights: telescope = false to disable, aerial = true to enable
	-- By default: auto-detects with lazy.nvim, or loads all if no lazy.nvim
	plugins = {},
}

---@type theme_name.Config
M.options = vim.tbl_deep_extend("force", {}, M.defaults)

---@param options? theme_name.Config
function M.setup(options)
	M.options = vim.tbl_deep_extend("force", {}, M.defaults, options or {})
end

---@param opts? theme_name.Config
function M.extend(opts)
	return opts and vim.tbl_deep_extend("force", {}, M.options, opts) or M.options
end

return M
