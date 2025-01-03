local M = {}

M.url = "https://github.com/Saghen/blink.cmp"

-- Get blink.cmp highlights
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
        BlinkCmpDoc = { fg = colors.fg, bg = colors.bg_dark },
        BlinkCmpDocBorder = { fg = colors.border, bg = colors.bg_dark },
        BlinkCmpGhostText = { fg = colors.comment },
        
        -- AI completion sources
        BlinkCmpKindCodeium = { fg = colors.purple, bg = colors.none },
        BlinkCmpKindCopilot = { fg = colors.purple, bg = colors.none },
        BlinkCmpKindTabNine = { fg = colors.purple, bg = colors.none },
        BlinkCmpKindSupermaven = { fg = colors.purple, bg = colors.none },
        
        -- Default kind
        BlinkCmpKindDefault = { fg = colors.fg_dark, bg = colors.none },
        
        -- Labels
        BlinkCmpLabel = { fg = colors.fg, bg = colors.none },
        BlinkCmpLabelDeprecated = { fg = colors.fg_gutter, bg = colors.none, strikethrough = true },
        BlinkCmpLabelMatch = { fg = colors.blue, bg = colors.none, bold = true },
    }

    -- Add kind-specific highlights
    for kind, color in pairs(kinds) do
        highlights["BlinkCmpKind" .. kind] = { fg = color, bg = colors.none }
    end

    return highlights
end

return M 