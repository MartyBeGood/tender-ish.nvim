local M = {}

M.dark = {
	red = {
		stark = "#f43753",
		medium = "#c5152f",
		subtle = "#79313c",
	},
	blue = {
		stark = "#b3deef",
		medium = "#73cef4",
		docs = "#44778d",
		subtle = "#335261",
		subtlest = "#293b44",
	},
	green = {
		stark = "#c9d05c",
		docs = "#9faa00", -- apparently only used in the statusline
		medium = "#6a6b3f",
		subtle = "#464632",
	},
	yellow = {
		stark = "#ffc24b",
		medium = "#e6a23c",
		subtle = "#715b2f",
	},
	khaki = "#d3b987",
	grey = {
		highlighted_text = "#ffffff",
		text = "#eeeeee",
		muted_text = "#bbbbbb",
		between_stark = "#999999",
		between_medium = "#666666",
		between_subtle = "#444444",
		shadow = "#323232",
		background = "#282828",
		dark = "#202020",
		darker = "#1d1d1d",
		darkest = "#000000",
	},
}

M.light = {
	red = {
		stark = "#79313c",
		medium = "#c5152f",
		subtle = "#f43753",
	},
	blue = {
		stark = "#293b44",
		docs = "#73cef4",
		subtle = "#44778d",
		medium = "#335261",
		subtlest = "#b3deef",
	},
	green = {
		subtle = "#c9d05c",
		docs = "#9faa00",
		medium = "#6a6b3f",
		stark = "#464632",
	},
	yellow = {
		subtle = "#ffc24b",
		medium = "#e6a23c",
		stark = "#715b2f",
	},
	khaki = "#d3b987",

	grey = {
		background = "#ffffff",
		shadow = "#dddddd",
		dark = "#eeeeee",
		darker = "#dadada",
		darkest = "#bbbbbb",
		between_stark = "#999999",
		between_medium = "#666666",
		between_subtle = "#444444",
		muted_text = "#282828",
		text = "#1d1d1d",
		highlighted_text = "#000000",
	},
}

M.get_colors = function()
	local palette = vim.o.background == "light" and M.light or M.dark
	local colors = {
		palette = palette, -- expose the raw palette to experiment to iterate faster on the colorscheme itself
	}

	colors.background = palette.grey.background
	colors.float_background = palette.grey.dark
	colors.float_border = palette.grey.between_stark
	colors.cursorline_background = palette.grey.shadow
	colors.statusline_bg = palette.grey.darker
	colors.visual_background = palette.blue.subtlest

	colors.text = {
		normal = palette.grey.text,
		highlighted = palette.grey.highlighted_text,
		muted = palette.grey.muted_text,
	}

	colors.guide = palette.grey.between_subtle
	colors.string = palette.green.stark
	colors.comment = palette.yellow.stark
	colors.constant = palette.blue.stark

	colors.diff = {
		removed = {
			fg = palette.red.stark,
			bg = palette.red.subtle,
		},
		changed = {
			fg = palette.blue.medium,
			bg = palette.blue.subtle,
		},
		added = {
			fg = palette.green.stark,
			bg = palette.green.subtle,
		},
	}

	colors.diagnostic = {
		error = palette.red.stark,
		warning = palette.yellow.medium,
		info = palette.blue.medium,
		hint = palette.green.docs,
	}

	return colors
end

return M
