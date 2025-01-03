local Util = require("morta.util")

local M = {}

M.url = "https://github.com/folke/snacks.nvim"

-- Get snacks.nvim highlights
---@param colors table
---@param config table
function M.get(colors, config)
    local none = config.transparent_background and "NONE" or colors.bg
    
    -- stylua: ignore
    return {
        -- Notifier
        SnacksNotifierDebug       = { fg = colors.fg, bg = none },
        SnacksNotifierBorderDebug = { fg = Util.blend_bg(colors.comment, 0.4), bg = none },
        SnacksNotifierIconDebug   = { fg = colors.comment },
        SnacksNotifierTitleDebug  = { fg = colors.comment },
        SnacksNotifierError       = { fg = colors.fg, bg = none },
        SnacksNotifierBorderError = { fg = Util.blend_bg(colors.error, 0.4), bg = none },
        SnacksNotifierIconError   = { fg = colors.error },
        SnacksNotifierTitleError  = { fg = colors.error },
        SnacksNotifierInfo        = { fg = colors.fg, bg = none },
        SnacksNotifierBorderInfo  = { fg = Util.blend_bg(colors.info, 0.4), bg = none },
        SnacksNotifierIconInfo    = { fg = colors.info },
        SnacksNotifierTitleInfo   = { fg = colors.info },
        SnacksNotifierTrace       = { fg = colors.fg, bg = none },
        SnacksNotifierBorderTrace = { fg = Util.blend_bg(colors.purple, 0.4), bg = none },
        SnacksNotifierIconTrace   = { fg = colors.purple },
        SnacksNotifierTitleTrace  = { fg = colors.purple },
        SnacksNotifierWarn        = { fg = colors.fg, bg = none },
        SnacksNotifierBorderWarn  = { fg = Util.blend_bg(colors.warning, 0.4), bg = none },
        SnacksNotifierIconWarn    = { fg = colors.warning },
        SnacksNotifierTitleWarn   = { fg = colors.warning },

        -- Dashboard
        SnacksDashboardDesc       = { fg = colors.type },
        SnacksDashboardFooter     = { fg = colors.blue },
        SnacksDashboardHeader     = { fg = colors.blue },
        SnacksDashboardIcon       = { fg = colors.blue },
        SnacksDashboardKey        = { fg = colors.gold },
        SnacksDashboardSpecial    = { fg = colors.purple },
        SnacksDashboardDir        = { fg = colors.comment },

        -- Profiler
        SnacksProfilerIconInfo    = { bg = Util.blend_bg(colors.blue, 0.3), fg = colors.blue },
        SnacksProfilerBadgeInfo   = { bg = Util.blend_bg(colors.blue, 0.1), fg = colors.blue },
        SnacksScratchKey          = { link = "SnacksProfilerIconInfo" },
        SnacksScratchDesc         = { link = "SnacksProfilerBadgeInfo" },
        SnacksProfilerIconTrace   = { bg = Util.blend_bg(colors.comment, 0.3), fg = colors.comment },
        SnacksProfilerBadgeTrace  = { bg = Util.blend_bg(colors.comment, 0.1), fg = colors.comment },

        -- Misc
        SnacksIndent              = { fg = colors.comment, nocombine = true },
        SnacksIndentScope         = { fg = colors.blue, nocombine = true },
        SnacksZenIcon             = { fg = colors.purple },
        SnacksInputIcon           = { fg = colors.blue },
        SnacksInputBorder         = { fg = colors.gold },
        SnacksInputTitle          = { fg = colors.gold },
    }
end

return M 