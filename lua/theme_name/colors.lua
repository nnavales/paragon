local M = {}

---@param opts? theme_name.Config
function M.setup(opts)
	opts = require("theme_name.config").extend(opts)

	---@class Palette
	local palette = {
		magenta = "#B8A0D5", -- arcana
		green = "#72C472", -- jade
		orange = "#E69A6C", -- ember
		yellow = "#EAD88A", -- gild
		cyan = "#9EDFE2", -- azure
		teal = "#5FB3A3", -- ichor

		muted = "#8B9C9F", -- smoke
		semantic = "#C3D0D2",

		red = "#D04E63",

		fg = "#E9F2F2",
		bg = "#181A1C",
		highlight_low = "#1B1E20",
		highlight_med = "#202325",
		highlight_high = "#33383C",

		-- pure UI
		surface = "#1F2225",
		overlay = "#272C2F",

		-- dim
		bg_dim = "#131618",
		fg_dim = "#6E797E",
		float_dim = "#879297",
		syntax_dim = "#7A878A",
	}

	---@class theme_name.ColorScheme: Palette
	local colors = vim.deepcopy(palette)

	colors.none = "NONE"

	colors.success = colors.green
	colors.error = colors.red
	colors.warning = colors.orange
	colors.info = colors.cyan
	colors.hint = colors.magenta

	-- Search & Match
	colors.search = colors.yellow
	colors.search_bg = colors.highlight_med
	colors.substitute = colors.orange
	colors.match = colors.yellow
	colors.title = colors.cyan

	colors.git = {
		add = colors.green,
		delete = colors.red,
		change = colors.cyan,
	}

	colors.diff = {
		add = "#1F2B22",
		change = "#1c212b",
		delete = "#2a1c1e",
		text = "#2a3a4a",
	}

	if opts.terminal_colors then
		colors.terminal = {
			black = colors.bg,
			red = colors.red,
			green = colors.green,
			yellow = colors.yellow,
			blue = colors.cyan,
			magenta = colors.magenta,
			cyan = colors.teal,
			white = colors.fg,

			bright_black = colors.highlight_high,
			bright_red = "#F08090",
			bright_green = "#88E888",
			bright_yellow = "#FFF2B0",
			bright_blue = "#D0FFFF",
			bright_magenta = "#D8C5F0",
			bright_cyan = "#88E0D0",
			bright_white = "#F5FAFA",
		}
	end

	return colors
end

return M
