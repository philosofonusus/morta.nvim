local M = {}

M.url = "https://github.com/hrsh7th/nvim-cmp"

-- Get nvim-cmp highlights
---@param colors table
---@param config table
function M.get(colors, config)
    -- Define completion item kinds
    local kinds = {
        Text = colors.fg_dark,
        Method = colors.purple,
        Function = colors.func,
        Constructor = colors.purple,
        Field = colors.blue,
        Variable = colors.variable,
        Class = colors.gold,
        Interface = colors.gold,
        Module = colors.gold,
        Property = colors.blue,
        Unit = colors.purple,
        Value = colors.constant,
        Enum = colors.gold,
        Keyword = colors.keyword,
        Snippet = colors.purple,
        Color = colors.purple,
        File = colors.blue,
        Reference = colors.purple,
        Folder = colors.blue,
        EnumMember = colors.purple,
        Constant = colors.constant,
        Struct = colors.gold,
        Event = colors.gold,
        Operator = colors.purple,
        TypeParameter = colors.type,
    }

    local highlights = {
        -- Main completion window
        CmpDocumentation = { fg = colors.fg, bg = colors.bg_dark },
        CmpDocumentationBorder = { fg = colors.border, bg = colors.bg_dark },
        CmpGhostText = { fg = colors.comment },
        
        -- Completion items
        CmpItemAbbr = { fg = colors.fg, bg = colors.none },
        CmpItemAbbrDeprecated = { fg = colors.fg_gutter, bg = colors.none, strikethrough = true },
        CmpItemAbbrMatch = { fg = colors.blue, bg = colors.none, bold = true },
        CmpItemAbbrMatchFuzzy = { fg = colors.blue, bg = colors.none, bold = true },
        
        -- AI completion sources
        CmpItemKindCodeium = { fg = colors.purple, bg = colors.none },
        CmpItemKindCopilot = { fg = colors.purple, bg = colors.none },
        CmpItemKindTabNine = { fg = colors.purple, bg = colors.none },
        
        -- Default kind
        CmpItemKindDefault = { fg = colors.fg_dark, bg = colors.none },
        
        -- Menu
        CmpItemMenu = { fg = colors.comment, bg = colors.none },
    }

    -- Add kind-specific highlights
    for kind, color in pairs(kinds) do
        highlights["CmpItemKind" .. kind] = { fg = color, bg = colors.none }
    end

    return highlights
end

return M 