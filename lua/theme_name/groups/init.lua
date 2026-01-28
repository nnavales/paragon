local M = {}

-- Mapeo de plugins a sus archivos de highlight groups
-- stylua: ignore
M.plugins = {
  ["snacks.nvim"]                   = "snacks",
}

---@param name string
---@return table
function M.get_group(name)
	local ok, mod = pcall(require, "theme_name.groups." .. name)
	if not ok then
		vim.notify("Failed to load group: " .. name, vim.log.levels.WARN)
		return {
			get = function()
				return {}
			end,
		}
	end
	return mod
end

---@param name string
---@param colors theme_name.Palette
---@param opts theme_name.Config
---@return table<string, vim.api.keyset.highlight>
function M.get(name, colors, opts)
	local mod = M.get_group(name)
	return mod.get(colors, opts)
end

---@param colors theme_name.Palette
---@param opts theme_name.Config
---@return table<string, vim.api.keyset.highlight>
function M.setup(colors, opts)
	-- Grupos que siempre se cargan
	local groups = {
		base = true,
		kinds = true,
		["semantic-token"] = true,
		treesitter = true,
	}

	-- Mergear todos los highlight groups
	local ret = {}
	for group in pairs(groups) do
		local highlights = M.get(group, colors, opts)
		for hl_name, hl_def in pairs(highlights) do
			ret[hl_name] = hl_def
		end
	end

	-- Resolver links (si un highlight apunta a otro por string)
	for hl_name, hl_def in pairs(ret) do
		if type(hl_def) == "string" then
			ret[hl_name] = { link = hl_def }
		end
	end

	return ret
end

return M
