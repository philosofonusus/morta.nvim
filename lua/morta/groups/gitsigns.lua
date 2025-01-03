local M = {}

M.url = "https://github.com/lewis6991/gitsigns.nvim"

-- Get gitsigns.nvim highlights
---@param colors table
---@param config table
function M.get(colors, config)
    return {
        -- Basic signs
        GitSignsAdd = { fg = colors.git_add },
        GitSignsChange = { fg = colors.git_change },
        GitSignsDelete = { fg = colors.git_delete },

        -- Line blame
        GitSignsCurrentLineBlame = { fg = colors.comment, italic = true },

        -- Line highlights
        GitSignsAddLn = { bg = Util.blend_bg(colors.git_add, 0.1) },
        GitSignsChangeLn = { bg = Util.blend_bg(colors.git_change, 0.1) },
        GitSignsDeleteLn = { bg = Util.blend_bg(colors.git_delete, 0.1) },

        -- Preview highlights
        GitSignsAddPreview = { bg = Util.blend_bg(colors.git_add, 0.1) },
        GitSignsDeletePreview = { bg = Util.blend_bg(colors.git_delete, 0.1) },

        -- Word diff
        GitSignsAddInline = { bg = Util.blend_bg(colors.git_add, 0.2) },
        GitSignsChangeInline = { bg = Util.blend_bg(colors.git_change, 0.2) },
        GitSignsDeleteInline = { bg = Util.blend_bg(colors.git_delete, 0.2) },
    }
end

return M 