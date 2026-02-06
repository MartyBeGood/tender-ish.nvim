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

	for group_name, group_def in pairs(groups.groups(palettes.get_colors())) do
		-- try to set highlight group. If it fails, notify with an error that mentions the group name
		local ok, result = pcall(function()
			vim.api.nvim_set_hl(0, group_name, group_def)
		end)
		if not ok then
			vim.notify("Error setting highlight for group: " .. group_name .. "\n" .. result, vim.log.levels.ERROR)
		end
	end
end

return M
