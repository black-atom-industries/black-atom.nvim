---@type BlackAtom.HighlightsSpec
local highlight_map_spec = {
    enabled = true,

    map = function(colors, config)
        local lib = require("black-atom.lib")

        local fg = colors.semantics.fg

        local bg = colors.semantics.bg
        local bg_float = lib.bg.float(config, colors)

        ---@type BlackAtom.Highlights
        local highlights_map = {
            FzfLuaNormal = { fg = fg.primary.main, bg = bg_float },
            FzfLuaCursorLine = { bg = bg.primary.light },
            FzfLuaTitle = { fg = fg.active },
            FzfLuaBorder = { link = "FloatBorder" },
            FzfLuaPreviewBorder = { link = "FloatBorder" },
            FzfLuaCursorLine = { bg = bg.primary.main },
            FzfLuaDirPart = { fg = fg.neutral },
        }

        return highlights_map
    end,
}

return highlight_map_spec
