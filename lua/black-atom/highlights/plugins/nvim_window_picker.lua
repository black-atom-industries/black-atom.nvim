-- Repository: https://github.com/s1n7ax/nvim-window-picker

---@type BlackAtom.HighlightsSpec
local highlight_map_spec = {
    enabled = true,

    map = function(colors)
        ---@type BlackAtom.Highlights
        local highlights_map = {
            -- these doesnt work. I commented on a closed issue about this
            -- [fix highlight not modifiable #27](https://github.com/s1n7ax/nvim-window-picker/pull/27)
            NvimWindoSwitch = {
                fg = colors.ui.fg.primary.main,
                bg = colors.ui.bg.secondary.main,
            },
            NvimWindoSwitchNC = {
                fg = colors.ui.fg.invert,
                bg = colors.ui.bg.active,
            },
        }

        return highlights_map
    end,
}

return highlight_map_spec
