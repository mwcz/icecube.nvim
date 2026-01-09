local c = require("icecube.palette")
local colors = require("icecube.colors")

return {
    rustFoldBraces = { fg = c.Delimiter.fg },
    rustDerive = c.Macro,
    rustAttribute = c.Comment,

    -- treesitter highlights
    ["@variable.builtin.rust"] = { fg = c.Normal.fg },
    ["@function.macro.rust"] = { fg = c.Macro.fg },
    ["@type.builtin.rust"] = { fg = colors.skyblue300 },
    ["@punctuation.special.rust"] = { fg = c.Delimiter.fg },

    -- lsp highlights

    ["@lsp.type.lifetime.rust"] = { fg = colors.skyblue300 },
    ["@lsp.type.macro.rust"] = c.Macro,
    ["@lsp.type.derive.rust"] = c.Macro,
    ["@lsp.typemod.decorator.attribute.rust"] = c.Macro,
    ["@lsp.typemod.selfKeyword.reference.rust"] = { fg = c.Identifier.fg },
    ["@lsp.typemod.selfKeyword.declaration.rust"] = { fg = c.Identifier.fg },
}
