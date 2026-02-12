local colors = require("theme_name.colors").setup()

local theme_name = {
	normal = {
		a = { fg = colors.bg, bg = colors.cyan, gui = "bold" },
		b = { fg = colors.fg, bg = colors.surface },
		c = { fg = colors.fg_dim, bg = colors.surface },
	},
	insert = {
		a = { fg = colors.bg, bg = colors.green, gui = "bold" },
		b = { fg = colors.fg, bg = colors.surface },
		c = { fg = colors.fg_dim, bg = colors.surface },
	},
	visual = {
		a = { fg = colors.bg, bg = colors.yellow, gui = "bold" },
		b = { fg = colors.fg, bg = colors.surface },
		c = { fg = colors.fg_dim, bg = colors.surface },
	},
	replace = {
		a = { fg = colors.bg, bg = colors.orange, gui = "bold" },
		b = { fg = colors.fg, bg = colors.surface },
		c = { fg = colors.fg_dim, bg = colors.surface },
	},
	command = {
		a = { fg = colors.bg, bg = colors.magenta, gui = "bold" },
		b = { fg = colors.fg, bg = colors.surface },
		c = { fg = colors.fg_dim, bg = colors.surface },
	},
	terminal = {
		a = { fg = colors.bg, bg = colors.teal, gui = "bold" },
		b = { fg = colors.fg, bg = colors.surface },
		c = { fg = colors.fg_dim, bg = colors.surface },
	},
	inactive = {
		a = { fg = colors.float_dim, bg = colors.bg_dim },
		b = { fg = colors.float_dim, bg = colors.bg_dim },
		c = { fg = colors.float_dim, bg = colors.bg_dim },
	},
}

return theme_name
