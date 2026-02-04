local M = {}

---@param opts? theme_name.Config
function M.setup(opts)
	opts = require("theme_name.config").extend(opts)

	---@class Palette
	local palette = {
		green = "#70C270", -- jade
		orange = "#EE9A63", -- ember
		yellow = "#E7C27A", -- gild
		cyan = "#9AD7DA", -- azure
		teal = "#649892", -- ichor
		magenta = "#B8A0D9", -- arcana

		muted = "#748488", -- smoke

		fg = "#E9F2F2", -- E7F0F0 if 161616
		bg = "#15181A", -- could be 161616
		highlight_low = "#1c2224",
		highlight_med = "#252d2f",
		highlight_high = "#303a3c",

		-- pure UI
		surface = "#171C1E",
		overlay = "#191E20",
		dim = "#798689", -- col nums

		-- dim
		bg_dim = "#0F1213",
		fg_dim = "#8A9599",
	}

	---@class theme_name.ColorScheme: Palette
	local colors = vim.deepcopy(palette)

	colors.none = "NONE"

	colors.success = "#70C270" -- green
	colors.error = "#D04E63" -- red
	colors.warning = "#EE9A63" -- orange/yellow
	colors.info = "#9AD7DA" -- blue
	colors.hint = "#B8A0D9" -- grey/soft cyan/soft purple

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
