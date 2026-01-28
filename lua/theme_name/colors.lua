---@class theme_name.Palette
local colors = {
	-- structure
	none = "NONE",
	red = "#D04E63",
	green = "#70C270",

	fg = "#ECF5F5", -- text
	bg = "#15181a", -- base (15181a, 161B20, 16181b)
	overlay = "#171C1E", -- cmp, lsp, etc
	surface = "#191E20",
	highlight_low = "#161d1d", -- algo muy discreto
	highlight_med = "#1A2323", -- cursorline
	highlight_high = "#1F2929", -- visual

	muted = "#566669", -- muted

	subtle = "#c7c7c7", --no text, guias de indent

	yellow = "#FFB870",
	orange = "#FF9272",
	blue = "#2572BE",
	cyan = "#6EC2C2",
	magenta = "#D799E0",

	-- notifications
	error = "#f44336",
	warning = "#ff9800",
	info = "#00bcd4",
	hint = "#4caf50",

	-- fg = "#e0def4",
	-- bg = "NONE",
	-- yellow = "#f6c177",
	-- cyan = "#9ccfd8",
	-- green = "#b6e07d",
	-- orange = "#ea9a97",
	-- violet = "#c4a7e7",
	-- magenta = "#e84a5f",
	-- blue = "#3e8fb0",
	-- red = "#eb6f92",

	-- fg_sidebar = "#C0C0C0", -- texto en barras laterales
	-- fg_float = "#E8EAED", -- texto en ventanas flotantes
	-- bg_float = "#202124", -- fondo de ventanas flotantes
	-- bg_sidebar = "#111111", -- fondo de barras laterales
	-- git_delete = "#f28b82", -- rojo claro para líneas eliminadas
	-- git_change = "#fbbc04", -- amarillo/naranja para líneas modificadas
	-- git_add = "#81c995", -- verde claro para líneas agregadas
	-- diff_text = "#334D4D",
	-- diff_add = "#334D33",
	-- diff_change = "#4D4D33",
	-- diff_delete = "#4D3333",
}

return colors
