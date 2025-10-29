local palette = require("icecube.colors")
return {
	-- RedrawDebugRecompose = { fg = c.Cursor.fg, bg = c.Macro.fg },
	-- RedrawDebugComposed = { fg = c.Cursor.fg, bg = c.Macro.fg },
	-- RedrawDebugNormal = { fg = c.Cursor.fg, bg = c.Macro.fg },
	-- RedrawDebugClear = { fg = c.Cursor.fg, bg = c.Macro.fg },
	-- debugBreakpointDisabled = { fg = c.Cursor.fg, bg = c.Macro.fg },
	debugBreakpoint = { fg = palette.midnightblue400, bg = palette.salmon500 },
	debugPC = { bg = palette.orange500, fg = palette.slateblue100 },
	Debug = { fg = palette.salmon500 },
}
