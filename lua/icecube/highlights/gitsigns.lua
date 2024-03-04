local c = require("icecube.palette")
local colors = require("icecube.colors")
return {
	GitSignsAdd = { fg = colors.teal500 },
	GitSignsAddNr = { fg = c.Comment.fg },
	GitSignsAddLn = { bg = c.Comment.fg },
	GitSignsChange = { fg = c.Label.fg },
	GitSignsChangeNr = { fg = c.Label.fg },
	GitSignsChangeLn = { bg = c.Label.fg },
	GitSignsDelete = { fg = c.String.fg },
	GitSignsDeleteNr = { fg = c.String.fg },
	GitSignsDeleteLn = { bg = c.String.fg },
}
