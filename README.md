# Morta

A dark colorscheme for Neovim.

## Features

- Dark theme with rich purples and ethereal blues
- Support for popular plugins
- Optional terminal colors
- Compiled cache for better performance

## Installation

Using [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
    "tentacles/morta",
    lazy = false,
    priority = 1000,
}
```

## Configuration

```lua
require("morta").setup({
    transparent_background = false,
    use_compiled = true,
    terminal_colors = false,
    styles = {
        comments = { italic = true, bold = false },
        keywords = { italic = true, bold = true },
        functions = { italic = false, bold = true },
        variables = { italic = false, bold = false },
        strings = { italic = false, bold = false },
        types = { italic = false, bold = true },
        constants = { italic = false, bold = true },
    },
    inverse = {
        match_paren = false,
        visual = false,
        search = false,
    },
    plugins = {
        cmp = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
        lspsaga = true,
        trouble = true,
        lazy = true,
        blink_cmp = true,
        gitsigns = true,
        lualine = true,
        snacks = true,
        hipatterns = true,
    },
})
```
