-- reset the cache
package.loaded["tender-ish"] = nil
package.loaded["tender-ish.palettes"] = nil
package.loaded["tender-ish.groups"] = nil

local present_before = package.loaded["tender-ish"]

require("tender-ish").colorscheme()

local present_after = package.loaded["tender-ish"]

if not present_before and present_after then
	print("tender-ish was loaded")
end
