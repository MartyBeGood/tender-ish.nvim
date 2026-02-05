local groups = require("tender-ish.groups")
local palettes = require("tender-ish.palettes")

local M = {}

M.colorscheme = function()
	vim.api.nvim_command("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.api.nvim_command("syntax reset")
	end

	vim.g.colors_name = "tender-ish"

	local colors = vim.o.background == "light" and palettes.light or palettes.dark

	for group_name, group_def in pairs(groups.groups(groups.semantic_colors(colors))) do
		vim.api.nvim_set_hl(0, group_name, group_def)
	end
end

return M
