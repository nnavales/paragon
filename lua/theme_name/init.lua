require("theme_name.types")
local config = require("theme_name.config")

local M = {}

function M.load()
	vim.o.background = "dark"

	-- tengo que cambiar la manera del setup
	return require("theme_name.theme").setup()
end

M.setup = config.setup

return M
