local M = {}

M.light_mode = function() -- function so that caching doesn't mess things up
	return vim.o.background == "light"
end

-- palette is the appropriate light or dark palette
M.semantic_colors = function(palette)
	return {
		bg = palette.grey[9],
		float_bg = palette.grey[10],
		cursorline_bg = palette.grey[8],

		text = palette.grey[2],
		highlight = palette.grey[1],
		muted_text = palette.grey[4],
		strings = palette.green[1],
		comments = palette.yellow[1],
		constants = palette.blue[1],

		removed_bg = palette.red[3],
		added_bg = palette.green[3],

		float_border = palette.grey[5],
		statusline_bg = palette.grey[7],
	}
end

M.groups = function(semantic_colors)
	return {
		Normal = { fg = semantic_colors.text, bg = semantic_colors.bg },
		Comment = { fg = semantic_colors.comments, italic = true },
		String = { fg = semantic_colors.strings },
		Identifier = { link = "Normal" },
		Function = { link = "Normal" },
		Special = { link = "Normal" },
		DiagnosticUnnecessary = { fg = semantic_colors.text, undercurl = true, sp = semantic_colors.strings },
		Statement = { fg = semantic_colors.muted_text },

		Removed = { fg = semantic_colors.removed_bg },
		diffRemoved = { bg = semantic_colors.removed_bg },
		Added = { fg = semantic_colors.added_bg },
		diffAdded = { bg = semantic_colors.added_bg },
		Changed = { fg = semantic_colors.changed_bg },
		diffChanged = { bg = semantic_colors.changed_bg },

		-- editor ui
		CursorLine = { bg = semantic_colors.cursorline_bg },
		CursorColumn = { link = "CursorLine" },
		NormalFloat = { bg = semantic_colors.float_bg },
		NormalNC = { fg = semantic_colors.muted_text },
		Directory = { fg = semantic_colors.text },

		FloatBorder = { fg = semantic_colors.float_border },
		WinSeparator = { fg = semantic_colors.float_border },
		StatusLine = { fg = semantic_colors.text, bg = semantic_colors.statusline_bg },
	}
end

return M
