local c = require("icecube.palette")
local colors = require("icecube.colors")
local color_ops = require("icecube.color-ops")

return {
    LspReferenceText = {},
    LspReferenceRead = {},
    LspReferenceWrite = {},
    LspSignatureActiveParameter = { fg = c.Conditional.fg, bold = true },
    LspInfoBorder = c.Conditional,
    LspInfoFiletype = c.Conditional,
    LspInfoList = c.Conditional,
    LspInfoTip = c.Comment,
    LspInfoTitle = c.Title,
    LspInlayHint = { fg = colors.seagreen800 },
}
