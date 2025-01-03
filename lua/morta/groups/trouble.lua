local M = {}

M.url = "https://github.com/folke/trouble.nvim"

-- Get trouble.nvim highlights
---@param colors table
---@param config table
function M.get(colors, config)
    return {
        -- Basic elements
        TroubleText = { fg = colors.fg_dark },
        TroubleCount = { fg = colors.purple, bg = colors.fg_gutter },
        TroubleNormal = { fg = colors.fg, bg = colors.bg_dark },
        
        -- Additional elements
        TroubleLocation = { fg = colors.fg_dark },
        TroubleSource = { fg = colors.fg_dark },
        TroubleCode = { fg = colors.fg_dark },
        TroubleFile = { fg = colors.blue, bold = true },
        
        -- Diagnostic signs
        TroubleError = { fg = colors.error },
        TroubleWarning = { fg = colors.warning },
        TroubleHint = { fg = colors.hint },
        TroubleInformation = { fg = colors.info },
        
        -- Folds and indentation
        TroubleFoldIcon = { fg = colors.fg_dark },
        TroubleIndent = { fg = colors.fg_gutter },
        TroubleSignError = { fg = colors.error },
        TroubleSignWarning = { fg = colors.warning },
        TroubleSignHint = { fg = colors.hint },
        TroubleSignInformation = { fg = colors.info },
        TroubleSignOther = { fg = colors.purple },
        
        -- Preview
        TroublePreview = { fg = colors.purple, bg = colors.bg_highlight },
    }
end

return M 