local M = {}

M.dark = {
	-- Color shades are ordered descending by contrast ratio, with the first shade being the most contrasted one and the last one being closest to the background color
	red = {
		"#79313c",
		"#c5152f",
		"#f43753",
	},
	blue = {
		"#293b44",
		"#335261",
		"#44778d",
		"#73cef4",
		"#b3deef",
	},
	green = {
		"#464632",
		"#6a6b3f",
		"#9faa00",
		"#c9d05c",
	},
	yellow = {
		"#d3b987",
		"#ffc24b",
		"#715b2f",
	},
	-- greyscale order:
	-- 1 = highlighted text
	-- 2 = text
	-- 3 = muted text
	-- 4 = gandalf (not sure what this is for yet)
	-- 5 = grey1 (not sure what this is for yet)
	-- 6 = grey2 (not sure what this is for yet)
	-- 7 = grey3 (not sure what this is for yet)
	-- 8 = shadow
	-- 9 = bg
	-- 10 = dark
	-- 11 = darker
	-- 12 = darkest
	grey = {
		"#ffffff",
		"#eeeeee",
		"#dadada",
		"#bbbbbb",
		"#999999",
		"#666666",
		"#444444",
		"#323232",
		"#282828",
		"#202020",
		"#1d1d1d",
		"#000000",
	},
}

local invert_list = function(list)
	local inverted = {}
	for i = #list, 1, -1 do
		table.insert(inverted, list[i])
	end
	return inverted
end

M.light = {
	red = invert_list(M.dark.red),
	blue = invert_list(M.dark.blue),
	green = invert_list(M.dark.green),
	yellow = invert_list(M.dark.yellow),
	grey = {
		"#000000", -- highlighted text
		"#1d1d1d", -- text
		"#202020", -- muted text
		"#282828", -- gandalf
		"#323232", -- grey1
		"#444444", -- grey2
		"#666666", -- grey3
		"#999999", -- shadow
		"#eeeeee", -- bg
		"#ffffff", -- dark
		"#dadada", -- darker
		"#bbbbbb", -- darkest
	},
}

return M
