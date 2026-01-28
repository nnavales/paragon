local M = {}

function M.setup()
	local opts = require("theme_name.config").get()
	local colors = require("theme_name.colors")
	local groups = require("theme_name.groups").setup(colors, opts)

	vim.cmd("highlight clear")

	if vim.fn.exists("syntax_on") == 1 then
		vim.cmd("syntax reset")
	end

	vim.o.termguicolors = true
	vim.g.colors_name = "theme_name"

	for group, hl in pairs(groups) do
		hl = type(hl) == "string" and { link = hl } or hl
		vim.api.nvim_set_hl(0, group, hl)
	end

	if opts.terminal_colors then
		M.terminal(colors)
	end
end

---@param colors theme_name.Palette
function M.terminal(colors)
	vim.g.terminal_color_0 = colors.bg
	vim.g.terminal_color_8 = colors.bright_bg

	vim.g.terminal_color_7 = colors.fg
	vim.g.terminal_color_15 = colors.bright_fg

	vim.g.terminal_color_1 = colors.red
	vim.g.terminal_color_9 = colors.bright_red

	vim.g.terminal_color_2 = colors.green
	vim.g.terminal_color_10 = colors.bright_green

	vim.g.terminal_color_3 = colors.yellow
	vim.g.terminal_color_11 = colors.bright_yellow

	vim.g.terminal_color_4 = colors.blue
	vim.g.terminal_color_12 = colors.bright_blue

	vim.g.terminal_color_5 = colors.magenta
	vim.g.terminal_color_13 = colors.bright_magenta

	vim.g.terminal_color_6 = colors.cyan
	vim.g.terminal_color_14 = colors.bright_cyan
end

return M
