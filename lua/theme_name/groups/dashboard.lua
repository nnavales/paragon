local M = {}

M.url = "https://github.com/nvimdev/dashboard-nvim"

---@type theme_name.HighlightsFn
function M.get(c, opts)
	return {
		DashboardHeader = { fg = c.green },
		DashboardFooter = { fg = c.fg },
		DashboardProjectTitle = { fg = c.fg },
		DashboardProjectTitleIcon = { fg = c.fg },
		DashboardProjectIcon = { fg = c.fg },
		DashboardMruTitle = { fg = c.fg },
		DashboardMruIcon = { fg = c.fg },
		DashboardFiles = { fg = c.fg },
		DashboardShortCutIcon = { fg = c.fg },
		DashboardDesc = { fg = c.fg },
		DashboardKey = { fg = c.fg },
		DashboardIcon = { fg = c.fg },
		DashboardShortCut = { fg = c.fg },
	}
end

return M
