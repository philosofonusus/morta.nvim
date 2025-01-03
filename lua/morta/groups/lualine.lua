local M = {}

M.url = "https://github.com/nvim-lualine/lualine.nvim"

-- Get lualine highlights
---@param colors table
---@param config table
function M.get(colors, config)
    return {
        -- Normal mode
        LualineNormalA = { fg = colors.bg, bg = colors.purple, bold = true },
        LualineNormalB = { fg = colors.fg, bg = colors.bg_highlight },
        LualineNormalC = { fg = colors.fg_dark, bg = colors.bg_dark },

        -- Insert mode
        LualineInsertA = { fg = colors.bg, bg = colors.blue, bold = true },
        LualineInsertB = { fg = colors.fg, bg = colors.bg_highlight },
        LualineInsertC = { fg = colors.fg_dark, bg = colors.bg_dark },

        -- Visual mode
        LualineVisualA = { fg = colors.bg, bg = colors.gold, bold = true },
        LualineVisualB = { fg = colors.fg, bg = colors.bg_highlight },
        LualineVisualC = { fg = colors.fg_dark, bg = colors.bg_dark },

        -- Replace mode
        LualineReplaceA = { fg = colors.bg, bg = colors.red, bold = true },
        LualineReplaceB = { fg = colors.fg, bg = colors.bg_highlight },
        LualineReplaceC = { fg = colors.fg_dark, bg = colors.bg_dark },

        -- Command mode
        LualineCommandA = { fg = colors.bg, bg = colors.type, bold = true },
        LualineCommandB = { fg = colors.fg, bg = colors.bg_highlight },
        LualineCommandC = { fg = colors.fg_dark, bg = colors.bg_dark },

        -- Terminal mode
        LualineTerminalA = { fg = colors.bg, bg = colors.git_add, bold = true },
        LualineTerminalB = { fg = colors.fg, bg = colors.bg_highlight },
        LualineTerminalC = { fg = colors.fg_dark, bg = colors.bg_dark },

        -- Inactive mode
        LualineInactiveA = { fg = colors.fg_dark, bg = colors.bg_dark },
        LualineInactiveB = { fg = colors.fg_dark, bg = colors.bg_dark },
        LualineInactiveC = { fg = colors.fg_dark, bg = colors.bg_dark },

        -- Diagnostics
        LualineDiagnosticError = { fg = colors.error },
        LualineDiagnosticWarn = { fg = colors.warning },
        LualineDiagnosticInfo = { fg = colors.info },
        LualineDiagnosticHint = { fg = colors.hint },

        -- Git
        LualineGitAdd = { fg = colors.git_add },
        LualineGitChange = { fg = colors.git_change },
        LualineGitDelete = { fg = colors.git_delete },
    }
end

-- Theme configuration for lualine
M.theme = function(colors)
    return {
        normal = {
            a = { fg = colors.bg, bg = colors.purple, gui = "bold" },
            b = { fg = colors.fg, bg = colors.bg_highlight },
            c = { fg = colors.fg_dark, bg = colors.bg_dark },
        },
        insert = {
            a = { fg = colors.bg, bg = colors.blue, gui = "bold" },
            b = { fg = colors.fg, bg = colors.bg_highlight },
            c = { fg = colors.fg_dark, bg = colors.bg_dark },
        },
        visual = {
            a = { fg = colors.bg, bg = colors.gold, gui = "bold" },
            b = { fg = colors.fg, bg = colors.bg_highlight },
            c = { fg = colors.fg_dark, bg = colors.bg_dark },
        },
        replace = {
            a = { fg = colors.bg, bg = colors.red, gui = "bold" },
            b = { fg = colors.fg, bg = colors.bg_highlight },
            c = { fg = colors.fg_dark, bg = colors.bg_dark },
        },
        command = {
            a = { fg = colors.bg, bg = colors.type, gui = "bold" },
            b = { fg = colors.fg, bg = colors.bg_highlight },
            c = { fg = colors.fg_dark, bg = colors.bg_dark },
        },
        terminal = {
            a = { fg = colors.bg, bg = colors.git_add, gui = "bold" },
            b = { fg = colors.fg, bg = colors.bg_highlight },
            c = { fg = colors.fg_dark, bg = colors.bg_dark },
        },
        inactive = {
            a = { fg = colors.fg_dark, bg = colors.bg_dark },
            b = { fg = colors.fg_dark, bg = colors.bg_dark },
            c = { fg = colors.fg_dark, bg = colors.bg_dark },
        },
    }
end

return M 