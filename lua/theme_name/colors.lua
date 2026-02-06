local M = {}

---@param opts? theme_name.Config
function M.setup(opts)
	opts = require("theme_name.config").extend(opts)

	---@class Palette
	local palette = {
		magenta = "#B8A0D5", -- arcana
		green = "#78CC78", -- jade
		orange = "#E69A6C", -- ember
		yellow = "#D9C471", -- gild
		cyan = "#9EDFE2", -- azure
		teal = "#6FA29E", -- ichor

		muted = "#5A6569", -- smoke

		fg = "#E9F2F2", -- E7F0F0 if 161616
		bg = "#15181A", -- could be 161616
		highlight_low = "#1A2124",
		highlight_med = "#1E2528",
		highlight_high = "#313B3F",

		-- pure UI
		surface = "#1F2629",
		overlay = "#2A3134",

		-- dim
		bg_dim = "#0F1213",
		fg_dim = "#7A8589",
	}

	---@class theme_name.ColorScheme: Palette
	local colors = vim.deepcopy(palette)

	colors.none = "NONE"

	colors.success = "#70C270" -- green
	colors.error = "#D04E63" -- red
	colors.warning = "#EE9A63" -- orange/yellow
	colors.info = "#9AD7DA" -- blue
	colors.hint = "#B8A0D9" -- grey/soft cyan/soft purple

	colors.search = colors.yellow
	colors.match = colors.yellow
	colors.title = colors.cyan

	colors.git = {
		add = "#70C270",
		delete = "#D04E63",
		change = "#9AD7DA",
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
			red = colors.error,
			green = colors.green,
			yellow = colors.yellow,
			blue = colors.cyan,
			magenta = colors.magenta,
			cyan = colors.teal,
			white = colors.fg,
		}
	end

	opts.on_colors(colors)
	return colors, opts
end

return M
