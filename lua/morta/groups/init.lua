local M = {}

-- Load all plugin integrations
function M.load(colors, config)
    local highlights = {}

    -- Load plugin integrations
    local plugins = {
        "cmp",
        "blink_cmp",
        "gitsigns",
        "lazy",
        "lspsaga",
        "lualine",
        "telescope",
        "treesitter",
        "treesitter_context",
        "trouble",
        -- Add more plugins here as we create them
    }

    -- Load each plugin's highlights
    for _, plugin in ipairs(plugins) do
        -- Only load if plugin integration is enabled
        if config.plugins[plugin] then
            local ok, plugin_hl = pcall(require, "morta.groups." .. plugin)
            if ok and type(plugin_hl.get) == "function" then
                local hl = plugin_hl.get(colors, config)
                -- Handle both direct highlight tables and linked highlights
                for group, opts in pairs(hl) do
                    if type(opts) == "string" then
                        -- Handle highlight links (e.g., "DiagnosticInfo")
                        highlights[group] = { link = opts }
                    else
                        highlights[group] = opts
                    end
                end
            end
        end
    end

    return highlights
end

return M 