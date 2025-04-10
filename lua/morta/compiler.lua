local M = {}

local PATH_SEP = vim.loop.os_uname().version:match("Windows") and "\\" or "/"

local function get_compiled_path()
  return table.concat({ vim.fn.stdpath("state"), "morta", "compiled.lua" }, PATH_SEP)
end

-- Compile the colorscheme
---@param colors table
---@param config table
function M.compile(colors, config)
  local cache_dir = vim.fn.stdpath("state") .. PATH_SEP .. "morta"
  vim.loop.fs_mkdir(cache_dir, 448)

  local fname = get_compiled_path()
  local file, err = io.open(fname, "wb")
  if not file or err then
    vim.notify("Morta: Error writing " .. fname .. ":\n" .. err, vim.log.levels.ERROR)
    return
  end

  local lines = {
    "require'morta'.compiled = string.dump(function()",
    "local g = vim.g",
    "local nvim_set_hl = vim.api.nvim_set_hl",
    "",
    "-- Clear existing highlights",
    "vim.cmd('hi clear')",
    "if vim.fn.exists('syntax_on') then",
    "  vim.cmd('syntax reset')",
    "end",
    "",
    "-- Set colorscheme name",
    "g.colors_name = 'morta'",
    "",
  }

  -- Generate highlight commands
  local highlights = require("morta.highlights")
  local hl_tbl = highlights.get_highlights(colors, config)

  local inspect = vim.inspect
  for group, spec in pairs(hl_tbl) do
    if type(spec) == "table" and next(spec) then
      table.insert(lines, ('nvim_set_hl(0, "%s", %s)'):format(group, inspect(spec):gsub("%s", "")))
    elseif type(spec) == "string" then
      table.insert(lines, ('nvim_set_hl(0, "%s", { link = "%s" })'):format(group, spec))
    end
  end

  table.insert(lines, "end)")

  -- Write compiled content
  local blob = table.concat(lines, "\n")
  assert(loadstring(blob, "=(compile)"))()
  file:write(require("morta").compiled)
  file:close()
end

-- Load compiled colorscheme
---@return boolean success
function M.load_compiled()
  local f = loadfile(get_compiled_path())
  if f then
    f()
    return true
  end
  return false
end

return M
