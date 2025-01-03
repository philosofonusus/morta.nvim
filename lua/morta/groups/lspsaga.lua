local M = {}

M.url = "https://github.com/glepnir/lspsaga.nvim"

-- Get lspsaga.nvim highlights
---@param colors table
---@param config table
function M.get(colors, config)
    return {
        -- Definition and References
        DefinitionCount = { fg = colors.purple },
        DefinitionIcon = { fg = colors.blue },
        ReferencesCount = { fg = colors.purple },
        ReferencesIcon = { fg = colors.blue },
        
        -- Diagnostics links
        DiagnosticInformation = "DiagnosticInfo",
        DiagnosticWarning = "DiagnosticWarn",
        
        -- Floating windows
        LspFloatWinBorder = { fg = colors.border },
        LspFloatWinNormal = { bg = colors.bg_dark },
        
        -- Saga specific highlights
        LspSagaBorderTitle = { fg = colors.type },
        LspSagaCodeActionBorder = { fg = colors.blue },
        LspSagaCodeActionContent = { fg = colors.purple },
        LspSagaCodeActionTitle = { fg = colors.blue },
        LspSagaDefPreviewBorder = { fg = colors.git_add },
        LspSagaFinderSelection = { fg = colors.selection },
        LspSagaHoverBorder = { fg = colors.blue },
        LspSagaRenameBorder = { fg = colors.git_add },
        LspSagaSignatureHelpBorder = { fg = colors.red },
        
        -- Target word
        TargetWord = { fg = colors.type },

        -- Additional saga highlights
        LspSagaDiagnosticBorder = { fg = colors.border },
        LspSagaDiagnosticHeader = { fg = colors.gold, bold = true },
        LspSagaDiagnosticTruncateLine = { fg = colors.border },
        LspSagaDocTruncateLine = { fg = colors.border },
        LspSagaFinderPreview = { fg = colors.git_add },
        LspSagaLspFinderBorder = { fg = colors.blue },
        LspSagaShTruncateLine = { fg = colors.border },
        LspSagaSignatureHelpTruncateLine = { fg = colors.border },
    }
end

return M 