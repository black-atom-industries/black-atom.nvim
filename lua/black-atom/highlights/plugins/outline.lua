---@type BlackAtom.HighlightsSpec
local highlight_map_extension = {
    map = function(colors, config)
        ---@type BlackAtom.Highlights
        local highlights_map = {
            FocusedSymbol = {
                fg = colors.palette.magenta,
                bg = colors.ui.bg.primary.light,
                bold = true,
            },
            AerialLine = {
                fg = colors.palette.magenta,
                bg = colors.ui.bg.primary.light,
                bold = true,
            },
        }

        return highlights_map
    end,
}

return highlight_map_extension
