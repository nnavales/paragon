local M = {}

-- lsp symbol kind and completion kind highlights
local kinds = {
	Array = "@punctuation.bracket",
	Boolean = "@boolean",
	Class = "@type",
	Color = "Special",
	Constant = "@constant",
	Constructor = "@constructor",
	Enum = "@type",
	EnumMember = "@constant",
	Event = "Special",
	Field = "@variable.member",
	File = "@text",
	Folder = "@directory",
	Function = "@function",
	Interface = "@type",
	Key = "@variable.member",
	Keyword = "@keyword",
	Method = "@function.method",
	Module = "@module",
	Namespace = "@module",
	Null = "@constant.builtin",
	Number = "@number",
	Object = "@variable",
	Operator = "@operator",
	Package = "@module",
	Property = "@property",
	Reference = "@markup.link",
	Snippet = "Conceal",
	String = "@string",
	Struct = "@type",
	Unit = "@type",
	Text = "@markup",
	TypeParameter = "@type.builtin",
	Variable = "@variable",
	Value = "@string",
}

---@param hl? table
---@param pattern? string
function M.kinds(hl, pattern)
	hl = hl or {}
	for kind, link in pairs(kinds) do
		local base = "LspKind" .. kind
		if pattern then
			hl[pattern:format(kind)] = base
		else
			hl[base] = link
		end
	end
	return hl
end

---@type function
function M.get()
	local hl = M.kinds()
	M.kinds(hl, "CmpItemKind%s")
	return hl
end

return M
