local M = {}

M.url = "https://github.com/supermaven-inc/supermaven-nvim"

-- Get supermaven-nvim highlights
---@param colors table
---@param config table
function M.get(colors, config)
    return {
        -- Suggestion highlights
        SupermavenSuggestion = { fg = colors.comment },
        
        -- Additional highlights for better integration
        SupermavenInline = { fg = colors.comment, italic = true },
        SupermavenBorder = { fg = colors.border, bg = colors.bg_dark },
        SupermavenFloating = { bg = colors.bg_dark },
        SupermavenSelected = { bg = colors.selection },
    }
end

return M 