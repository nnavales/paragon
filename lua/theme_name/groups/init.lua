local Util = require("theme_name.util")

local M = {}

M.plugins = {
	["telescope.nvim"] = "telescope",
	["fzf-lua"] = "fzf",
	["which-key.nvim"] = "which-key",
	["lazy.nvim"] = "lazy",
	["gitsigns.nvim"] = "gitsigns",
	["nvim-tree.lua"] = "nvim-tree",
	["nvim-cmp"] = "cmp",
	["trouble.nvim"] = "trouble",
	["noice.nvim"] = "noice",
	["bufferline.nvim"] = "bufferline",
	["barbar.nvim"] = "barbar",
	["dashboard-nvim"] = "dashboard",
	["neo-tree.nvim"] = "neo-tree",
	["blink.cmp"] = "blink",
	["flash.nvim"] = "flash",
	["aerial.nvim"] = "aerial",
	["vim-sneak"] = "sneak",
	["hop.nvim"] = "hop",
	["leap.nvim"] = "leap",
	["grug-far.nvim"] = "grug-far",
	["nvim-notify"] = "notify",
	["render-markdown.nvim"] = "render-markdown",
	["headlines.nvim"] = "headlines",
	["indentmini.nvim"] = "indentmini",
	["vim-gitgutter"] = "gitgutter",
	["vim-glyph-palette"] = "glyph-palette",
	["mini.pick"] = "mini_pick",
	["mini.icons"] = "mini_icons",
	["lspsaga.nvim"] = "lspsaga",
	["neotest"] = "neotest",
	["neogit"] = "neogit",
	["diffview.nvim"] = "diffview",
	["snacks.nvim"] = "snacks",
}

function M.get_group(name)
	---@type {get: theme_name.HighlightsFn, url: string}
	return Util.mod("theme_name.groups." .. name)
end

---@param colors theme_name.ColorScheme
---@param opts theme_name.Config
function M.get(name, colors, opts)
	local mod = M.get_group(name)
	return mod.get(colors, opts)
end

---@param colors theme_name.ColorScheme
---@param opts theme_name.Config
function M.setup(colors, opts)
	local groups = {
		base = true,
		kinds = true,
		semantic_tokens = true,
		treesitter = true,
	}

	-- Auto-detect plugins with lazy.nvim, or load all if no lazy.nvim
	if package.loaded.lazy then
		local lazy_plugins = require("lazy.core.config").plugins
		for plugin, group in pairs(M.plugins) do
			if lazy_plugins[plugin] then
				groups[group] = true
			end
		end
	else
		-- No lazy.nvim: load all plugins
		for _, group in pairs(M.plugins) do
			groups[group] = true
		end
	end

	-- Apply manual overrides
	for name, enabled in pairs(opts.plugins) do
		if type(enabled) == "boolean" then
			groups[name] = enabled or nil
		end
	end

	local ret = {}
	-- merge highlights
	for group in pairs(groups) do
		for k, v in pairs(M.get(group, colors, opts)) do
			ret[k] = v
		end
	end
	Util.resolve(ret)

	return ret
end

return M
