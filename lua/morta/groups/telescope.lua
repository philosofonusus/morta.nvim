local M = {}

M.url = "https://github.com/nvim-telescope/telescope.nvim"

-- Get telescope.nvim highlights
---@param colors table
---@param config table
function M.get(colors, config)
    return {
        -- Basic elements
        TelescopeBorder = { fg = colors.border, bg = colors.bg_dark },
        TelescopeNormal = { fg = colors.fg, bg = colors.bg_dark },
        TelescopePromptBorder = { fg = colors.gold, bg = colors.bg_dark },
        TelescopePromptTitle = { fg = colors.gold, bg = colors.bg_dark },
        TelescopeResultsTitle = { fg = colors.blue, bg = colors.bg_dark },
        TelescopePreviewTitle = { fg = colors.purple, bg = colors.bg_dark },
        TelescopeResultsComment = { fg = colors.comment },
        
        -- Prompt
        TelescopePromptNormal = { fg = colors.fg, bg = colors.bg_dark },
        TelescopePromptPrefix = { fg = colors.purple },
        TelescopePromptCounter = { fg = colors.fg_dark },
        
        -- Results
        TelescopeResultsNormal = { fg = colors.fg, bg = colors.bg_dark },
        TelescopeSelectionCaret = { fg = colors.purple, bg = colors.selection },
        TelescopeSelection = { bg = colors.selection },
        TelescopeMatching = { fg = colors.blue, bold = true },
        
        -- Preview
        TelescopePreviewNormal = { fg = colors.fg, bg = colors.bg_dark },
        TelescopePreviewBorder = { fg = colors.border, bg = colors.bg_dark },
        TelescopePreviewLine = { bg = colors.bg_highlight },
        TelescopePreviewMatch = { fg = colors.blue, bg = colors.selection },
        
        -- Multi-select
        TelescopeMultiSelection = { bg = colors.bg_highlight },
        TelescopeMultiIcon = { fg = colors.purple },
    }
end

return M 