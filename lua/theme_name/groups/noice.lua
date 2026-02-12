local M = {}

M.url = "https://github.com/folke/noice.nvim"

---@type theme_name.HighlightsFn
function M.get(c)
	local ret = {
		NoiceCmdlinePopupTitleLua = { fg = c.cyan },
		NoiceCmdlineIconLua = { fg = c.cyan },
		NoiceCmdlinePopupBorderLua = { fg = c.cyan },
	}
	require("theme_name.groups.kinds").kinds(ret, "NoiceCompletionItemKind%s")
	return ret
end

return M
