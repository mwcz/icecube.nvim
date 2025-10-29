local c = require("icecube.palette")
local colors = require("icecube.colors")
local color_ops = require("icecube.color-ops")
return {
	-- ["@lsp.mod.constant.rust"] = c.Constant,
	-- ["@lsp.type.builtinType.rust"] = { fg = colors.teal500 },
	["@lsp.type.lifetime.rust"] = { fg = colors.skyblue300 },
	["@lsp.type.macro.rust"] = c.Macro,
	["@lsp.type.decorator.rust"] = c.Macro,
	LspReferenceText = {},
	LspReferenceRead = {},
	LspReferenceWrite = {},
	LspSignatureActiveParameter = { fg = c.Conditional.fg, bold = true },
	LspInfoBorder = c.Conditional,
	LspInfoFiletype = c.Conditional,
	LspInfoList = c.Conditional,
	LspInfoTip = c.Comment,
	LspInfoTitle = c.Title,
	LspInlayHint = { fg = colors.teal600 },
}
