local palette = require("zenburn.colors")
return {
	-- RedrawDebugRecompose = { fg = c.Cursor.fg, bg = c.Macro.fg },
	-- RedrawDebugComposed = { fg = c.Cursor.fg, bg = c.Macro.fg },
	-- RedrawDebugNormal = { fg = c.Cursor.fg, bg = c.Macro.fg },
	-- RedrawDebugClear = { fg = c.Cursor.fg, bg = c.Macro.fg },
	-- debugBreakpointDisabled = { fg = c.Cursor.fg, bg = c.Macro.fg },
	debugBreakpoint = { fg = palette.dark_sand, bg = palette.salmon500 },
	debugPC = { bg = palette.slategreen250 },
	Debug = { fg = palette.salmon },
}
