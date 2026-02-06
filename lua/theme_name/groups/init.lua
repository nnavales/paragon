local Util = require("theme_name.util")

local M = {}

-- stylua: ignore
M.plugins = {
  ["telescope.nvim"]                = "telescope",
  ["fzf-lua"]                       = "fzf",
  ["mini.pick"]                     = "mini_pick",
  ["which-key.nvim"]                = "which-key",
  ["lazy.nvim"]                     = "lazy",
  ["gitsigns.nvim"]                 = "gitsigns",
  ["nvim-tree.lua"]                 = "nvim-tree",
  ["nvim-cmp"]                      = "cmp",
  ["trouble.nvim"]                  = "trouble",
  ["noice.nvim"]                    = "noice",
  ["bufferline.nvim"]               = "bufferline",
  ["dashboard-nvim"]                = "dashboard",
  ["neo-tree.nvim"]                 = "neo-tree",
  -- ["alpha-nvim"]                    = "alpha",
  -- ["aerial.nvim"]                   = "aerial",
  -- ["ale"]                           = "ale",
  -- ["barbar.nvim"]                   = "barbar",
  -- ["blink.cmp"]                     = "blink",
  -- ["flash.nvim"]                    = "flash",
  -- ["grug-far.nvim"]                 = "grug-far",
  -- ["headlines.nvim"]                = "headlines",
  -- ["hop.nvim"]                      = "hop",
  -- ["indentmini.nvim"]               = "indentmini",
  -- ["leap.nvim"]                     = "leap",
  -- ["lspsaga.nvim"]                  = "lspsaga",
  -- ["mini.animate"]                  = "mini_animate",
  -- ["mini.clue"]                     = "mini_clue",
  -- ["mini.completion"]               = "mini_completion",
  -- ["mini.cursorword"]               = "mini_cursorword",
  -- ["mini.deps"]                     = "mini_deps",
  -- ["mini.diff"]                     = "mini_diff",
  -- ["mini.files"]                    = "mini_files",
  -- ["mini.hipatterns"]               = "mini_hipatterns",
  -- ["mini.icons"]                    = "mini_icons",
  -- ["mini.indentscope"]              = "mini_indentscope",
  -- ["mini.jump"]                     = "mini_jump",
  -- ["mini.map"]                      = "mini_map",
  -- ["mini.notify"]                   = "mini_notify",
  -- ["mini.operators"]                = "mini_operators",
  -- ["mini.starter"]                  = "mini_starter",
  -- ["mini.statusline"]               = "mini_statusline",
  -- ["mini.surround"]                 = "mini_surround",
  -- ["mini.tabline"]                  = "mini_tabline",
  -- ["mini.test"]                     = "mini_test",
  -- ["mini.trailspace"]               = "mini_trailspace",
  -- ["neogit"]                        = "neogit",
  -- ["neotest"]                       = "neotest",
  -- ["nvim-dap"]                      = "dap",
  -- ["nvim-navic"]                    = "navic",
  -- ["nvim-notify"]                   = "notify",
  -- ["nvim-scrollbar"]                = "scrollbar",
  -- ["nvim-treesitter-context"]       = "treesitter-context",
  -- ["octo.nvim"]                     = "octo",
  -- ["rainbow-delimiters.nvim"]       = "rainbow",
  -- ["render-markdown.nvim"]          = "render-markdown",
  -- ["sidekick.nvim"]                 = "sidekick",
  -- ["snacks.nvim"]                   = "snacks",
  -- ["supermaven-nvim"]               = "supermaven", 
  -- ["vim-gitgutter"]                 = "gitgutter",
  -- ["vim-glyph-palette"]             = "glyph-palette",
  -- ["vim-illuminate"]                = "illuminate",
  -- ["vim-sneak"]                     = "sneak",
  -- ["vimwiki"]                       = "vimwiki",
  -- ["yanky.nvim"]                    = "yanky"
}

local me = debug.getinfo(1, "S").source:sub(2)
me = vim.fn.fnamemodify(me, ":h")

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

	for _, group in pairs(M.plugins) do
		groups[group] = true
	end

	local names = vim.tbl_keys(groups)
	table.sort(names)

	local ret = {}
	-- merge highlights
	for group in pairs(groups) do
		for k, v in pairs(M.get(group, colors, opts)) do
			ret[k] = v
		end
	end
	Util.resolve(ret)
	opts.on_highlights(ret, colors)

	return ret, groups
end

return M
