local c = require("icecube.palette")
return {
	LspReferenceText = c.IncSearch,
	LspReferenceRead = c.IncSearch,
	LspReferenceWrite = c.IncSearch,
	LspSignatureActiveParameter = { fg = c.Conditional.fg, bold = true },
	LspInfoBorder = c.Conditional,
	LspInfoFiletype = c.Conditional,
	LspInfoList = c.Conditional,
	LspInfoTip = c.Comment,
	LspInfoTitle = c.Title,
}
