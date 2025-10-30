local palette = require("icecube.palette")
local colors = require("icecube.colors")

return {
	["@tag.html"] = { fg = colors.skyblue300 },
	["@tag.delimiter.html"] = { fg = colors.slateblue650 },
	["@tag.attribute.html"] = { fg = colors.skyblue300 },
	["@string.special.url.html"] = { fg = palette.String.fg, underline = true },
	["@markup.heading.html"] = { fg = palette.Constant.fg },
}
