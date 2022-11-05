local c = require("icecube.palette")
return {
    DiagnosticError = { fg=c.Error.fg },
    DiagnosticWarn = { fg=c.PreProc.fg },
    DiagnosticInfo = { fg=c.Identifier.fg },
    DiagnosticHint = { fg=c.Comment.fg },

    -- Unsure if these will be needed
    -- DiagnosticFloatingError = { fg=c.Error.fg, },
    -- DiagnosticFloatingHint = { bg="#3d425b", fg="#cccccc", },
    -- DiagnosticFloatingInfo = { fg="#89b8c2", },
    -- DiagnosticFloatingWarn = { fg="#e2a478", },
    -- DiagnosticSignError = { bg="#1e2132", fg="#e27878", },
    -- DiagnosticSignHint = { bg="#1e2132", fg="#6b7089", },
    -- DiagnosticSignInfo = { bg="#1e2132", fg="#89b8c2", },
    -- DiagnosticSignWarn = { bg="#1e2132", fg="#e2a478", },
    -- DiagnosticVirtualTextError = { fg="#e27878", },
    -- DiagnosticVirtualTextHint = { fg="#6b7089", },
    -- DiagnosticVirtualTextInfo = { fg="#89b8c2", },
    -- DiagnosticVirtualTextWarn = { fg="#e2a478", },
}

