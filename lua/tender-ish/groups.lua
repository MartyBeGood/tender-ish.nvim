local M = { link = "Text" }

M.groups = function(colors)
	return {
		-- syntax highlighting
		Normal = { fg = colors.text.normal, bg = colors.background },
		Text = { fg = colors.text.normal },
		Comment = { fg = colors.comment, italic = true },
		String = { fg = colors.string },
		Identifier = { link = "Text" },
		Function = { link = "Text" },
		Special = { link = "Text" },
		Statement = { fg = colors.text.muted },
		Constant = { fg = colors.constant },
		PreProc = { link = "Text" },
		Type = { link = "Text" },
		["@variable"] = { link = "Text" },
		["@module"] = { link = "Text" },
		Operator = { link = "Text" },
		Delimiter = { link = "Text" },
		Todo = { link = "Text" },

		-- diagnostics
		DiagnosticUnnecessary = { link = "Text" },
		DiagnosticError = { fg = colors.diagnostic.error },
		DiagnosticWarn = { fg = colors.diagnostic.warning },
		DiagnosticInfo = { fg = colors.diagnostic.info },
		DiagnosticHint = { fg = colors.diagnostic.hint },
		DiagnosticOk = { fg = colors.diagnostic.hint },
		DiagnosticUnderlineError = { undercurl = true, sp = colors.diagnostic.error },
		DiagnosticUnderlineWarn = { undercurl = true, sp = colors.diagnostic.warning },
		DiagnosticUnderlineInfo = { undercurl = true, sp = colors.diagnostic.info },
		DiagnosticUnderlineHint = { undercurl = true, sp = colors.diagnostic.hint },
		DiagnosticUnderlineOk = { undercurl = true, sp = colors.diagnostic.hint },

		DiagnostidDeprecated = { link = "Text" },
		Error = { link = "DiagnosticError" },

		-- diffs
		Removed = { fg = colors.diff.removed.fg },
		Added = { fg = colors.diff.added.fg },
		Changed = { fg = colors.diff.changed.fg },

		diffRemoved = { bg = colors.diff.removed.bg },
		diffAdded = { bg = colors.diff.added.bg },
		diffChanged = { bg = colors.diff.changed.bg },

		DiffDelete = { link = "diffRemoved" },
		DiffAdd = { link = "diffAdded" },
		DiffChange = { link = "diffChanged" },
		DiffText = { link = "Text" },

		-- editor ui
		NonText = { fg = colors.guide },
		MatchParen = { link = "Text" },
		CursorLine = { bg = colors.cursorline_background },
		CursorColumn = { link = "CursorLine" },
		NormalFloat = { bg = colors.float_background },
		NormalNC = { fg = colors.text.muted },
		Directory = { fg = colors.palette.khaki },

		FloatBorder = { fg = colors.float_border },
		FloatShadow = { bg = colors.palette.grey.shadow },
		WinSeparator = { link = "FloatBorder" },
		StatusLine = { fg = colors.text.normal, bg = colors.statusline_bg },
		StatusLineNC = { link = "Text" },
		Folded = { link = "Text" },
		ErrorMsg = { link = "Text" },
		Search = { link = "Text" },
		CurSearch = { link = "Text" },
		MoreMsg = { link = "Text" },
		ModeMsg = { link = "Text" },
		LineNr = { fg = colors.palette.grey.between_medium },
		Question = { link = "Text" },
		CursorLineNr = { fg = colors.comment, bg = colors.cursorline_background },
		Pmenu = { link = "Text" },
		PmenuSel = { link = "Text" },
		PmenuSbar = { link = "Text" },
		PmenuThumb = { link = "Text" },
		TabLine = { link = "Text" },
		TabLineFill = { link = "Text" },
		TabLineSel = { link = "Text" },
		Title = { link = "Text" },
		Visual = { bg = colors.visual_background },
		VisualNOS = { link = "Text" },
		WarningMsg = { link = "Text" },
		SignColumn = { link = "Text" },
		Conceal = { link = "Text" },
		SpellBad = { link = "Text" },
		SpellCap = { link = "Text" },
		SpellRare = { link = "Text" },
		SpellLocal = { link = "Text" },
		ColorColumn = { link = "Text" },
		QuickFixLine = { link = "Text" },
		WinBar = { link = "Text" },
		WinBarNC = { link = "Text" },

		-- plugins
		GitSignsAdd = { fg = colors.diff.added.fg },
		GitSignsChange = { fg = colors.diff.changed.fg },
		GitSignsCurrentLineBlame = { fg = colors.palette.grey.between_medium, italic = true },

		NeoTreeNormal = { fg = colors.text.normal, bg = colors.palette.grey.dark },
		NeoTreeNormalNC = { fg = colors.text.muted, bg = colors.palette.grey.dark },
		NeoTreeWinSeparator = { fg = colors.palette.grey.dark, bg = colors.palette.grey.dark },
		MiniIconsAzure = { fg = colors.palette.blue.medium },
	}
end

return M
