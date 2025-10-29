local palette = require("icecube.palette")
local colors = require("icecube.colors")
local color_ops = require("icecube.color-ops")

return {
	["@tag.html"] = { fg = colors.tan800 },
	["@tag.delimiter.html"] = { fg = colors.slateblue650 },
	["@tag.attribute.html"] = { fg = colors.tan800 },
	["@string.special.url.html"] = { fg = palette.String.fg, underline = true },
	["@markup.heading.html"] = { fg = palette.Constant.fg },
}
