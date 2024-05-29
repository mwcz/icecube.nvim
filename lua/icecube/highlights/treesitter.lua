local c = require("icecube.palette")
local colors = require("icecube.colors")
local color_ops = require("icecube.color-ops")
return {
	TSNone = {},
	TSError = {},
	TSTitle = { fg = c.Title.fg },
	TSLiteral = { fg = c.String.fg },
	TSURI = { underline = true },
	TSVariable = { fg = c.Normal.fg },
	TSPunctDelimiter = { fg = c.Delimiter.fg },
	TSPunctBracket = { fg = c.Delimiter.fg },
	TSPunctSpecial = { fg = c.Delimiter.fg },
	TSConstant = { fg = c.Constant.fg },
	TSConstBuiltin = { fg = c.Special.fg },
	TSConstMacro = { fg = c.Define.fg },
	TSString = { fg = c.String.fg },
	TSStringRegex = { fg = c.String.fg },
	TSStringEscape = { fg = c.SpecialChar.fg },
	TSCharacter = { fg = c.Character.fg },
	TSNumber = { fg = c.Number.fg },
	TSBoolean = { fg = c.Boolean.fg },
	TSFloat = { fg = c.Float.fg },
	["@number.float"] = { fg = c.Float.fg },
	TSFunction = { fg = c.Function.fg },
	TSFuncBuiltin = { fg = c.Special.fg },
	TSFuncMacro = { fg = c.Macro.fg },
	TSParameter = { fg = c.ModeMsg.fg },
	TSParameterReference = { fg = c.ModeMsg.fg },
	TSMethod = { fg = c.Include.fg },
	TSField = { fg = c.Identifier.fg },
	TSProperty = { fg = c.Identifier.fg },
	TSConstructor = { fg = c.Include.fg },
	TSAnnotation = { fg = c.PreProc.fg },
	TSAttribute = { fg = c.PreProc.fg },
	TSNamespace = { fg = c.Include.fg },
	TSConditional = { fg = c.Conditional.fg },
	TSRepeat = { fg = c.Repeat.fg },
	TSLabel = { fg = c.Label.fg },
	TSOperator = { fg = c.Operator.fg },
	TSKeyword = { fg = c.Keyword.fg },
	["@keyword.function"] = { fg = c.Keyword.fg },
	TSKeywordOperator = { fg = c.Operator.fg },
	TSKeywordReturn = { fg = c.Float.fg },
	TSException = { fg = c.Exception.fg },
	["@type"] = { fg = colors.skyblue300 },
	["@variable.builtin.rust"] = { fg = c.Normal.fg },
	["@function.macro.rust"] = { fg = c.Macro.fg },
	["@type.builtin.rust"] = { fg = colors.skyblue300 },
	["@punctuation.special.rust"] = { fg = c.Delimiter.fg },
	TSType = { fg = c.Delimiter.fg },
	TSTypeBuiltin = { fg = c.Delimiter.fg },
	TSInclude = { fg = c.Include.fg },
	TSVariableBuiltin = { fg = c.Number.fg },
	TSText = {},
	TSStrong = { bold = true, underline = false },
	TSEmphasis = { bold = true },
	TSUnderline = { underline = false },
	TSComment = { fg = c.Comment.fg },
	TSStructure = { fg = c.Structure.fg },
	TSTag = { fg = c.Tag.fg },
	TSTagDelimiter = { fg = c.Tag.fg },
	["@constructor.lua"] = c.Delimiter, -- this belongs elsewhere but I don't want a dedicated Lua file yet
}

-- TSAttribute = { fg="#b4be82", },
-- TSBoolean = { fg="#a093c7", },
-- TSCharacter = { fg="#a093c7", },
-- TSComment = { fg="#6b7089", },
-- TSConditional = { fg="#84a0c6", },
-- TSConstBuiltin = { fg="#a093c7", },
-- TSConstMacro = { fg="#a093c7", },
-- TSConstant = { fg="#a093c7", },
-- TSConstructor = { fg="#cccccc", },
-- TSError = { bg="#161821", fg="#e27878", },
-- TSException = { fg="#84a0c6", },
-- TSField = { fg="#cccccc", },
-- TSFloat = { fg="#a093c7", },
-- TSFunction = { fg="#a3adcb", },
-- TSFunctionBuiltin = { fg="#a3adcb", },
-- TSFunctionMacro = { fg="#a3adcb", },
-- TSInclude = { fg="#84a0c6", },
-- TSKeyword = { fg="#84a0c6", },
-- TSKeywordFunction = { fg="#84a0c6", },
-- TSLabel = { fg="#b4be82", },
-- TSMethod = { fg="#a3adcb", },
-- TSNamespace = { fg="#84a0c6", },
-- TSNumber = { fg="#a093c7", },
-- TSOperator = { fg="#cccccc", },
-- TSParameter = { fg="#cccccc", },
-- TSParameterReference = { fg="#cccccc", },
-- TSPlaygroundFocus = { bg="#272c42", },
-- TSPlaygroundLang = { fg="#89b8c2", },
-- TSProperty = { fg="#cccccc", },
-- TSPunctBracket = { fg="#cccccc", },
-- TSPunctDelimiter = { fg="#cccccc", },
-- TSPunctSpecial = { fg="#b4be82", },
-- TSQueryLinterError = { bg="#161821", fg="#e27878", },
-- TSRepeat = { fg="#84a0c6", },
-- TSString = { fg="#89b8c2", },
-- TSStringEscape = { fg="#b4be82", },
-- TSStringRegex = { fg="#89b8c2", },
-- TSTagAttribute = { fg="#a093c7", },
-- TSText = { fg="#cccccc", },
-- TSTitle = { fg="#e2a478", },
-- TSType = { fg="#84a0c6", },
-- TSTypeBuiltin = { fg="#84a0c6", },
-- TSURI = { fg="#89b8c2", },
-- TSVariable = { fg="#cccccc", },
-- TSVariableBuiltin = { fg="#84a0c6", },

-- TSAttribute
-- TSBoolean
-- TSCharacter
-- TSCharacterSpecial
-- TSComment
-- TSConditional
-- TSConstant
-- TSConstBuiltin
-- TSConstMacro
-- TSConstructor
-- TSDebug
-- TSDefine
-- TSError
-- TSException
-- TSField
-- TSFloat
-- TSFunction
-- TSFuncBuiltin
-- TSFuncMacro
-- TSInclude
-- TSKeyword
-- TSKeywordFunction
-- TSKeywordOperator
-- TSKeywordReturn
-- TSLabel
-- TSMethod
-- TSNamespace
-- TSNone
-- TSNumber
-- TSOperator
-- TSParameter
-- TSParameterReference
-- TSPreProc
-- TSProperty
-- TSPunctDelimiter
-- TSPunctBracket
-- TSPunctSpecial
-- TSRepeat
-- TSStorageClass
-- TSString
-- TSStringRegex
-- TSStringEscape
-- TSStringSpecial
-- TSSymbol
-- TSTag
-- TSTagAttribute
-- TSTagDelimiter
-- TSText
-- TSStrong
-- TSEmphasis
-- TSUnderline
-- TSStrike
-- TSTitle
-- TSLiteral
-- TSURI
-- TSMath
-- TSTextReference
-- TSEnvironment
-- TSEnvironmentName
-- TSNote
-- TSWarning
-- TSDanger
-- TSTodo
-- TSType
-- TSTypeBuiltin
-- TSTypeQualifier
-- TSTypeDefinition
-- TSVariable
-- TSVariableBuiltin
