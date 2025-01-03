local M = {}
local Util = require("morta.util")

M.url = "https://github.com/nvim-treesitter/nvim-treesitter-context"

-- Get treesitter-context highlights
---@param colors table
---@param config table
function M.get(colors, config)
    return {
        -- Main context highlight
        TreesitterContext = { bg = Util.blend_bg(colors.fg_gutter, 0.8) },
        TreesitterContextLineNumber = { fg = colors.fg_gutter },
        
        -- Additional context highlights
        TreesitterContextBottom = { underline = true, sp = colors.border },
        TreesitterContextSeparator = { fg = colors.border },
    }
end

return M 