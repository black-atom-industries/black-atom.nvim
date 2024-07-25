local lib = require("black-atom.lib")

local M = {}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    -- Lows
    "#1f1d1d",
    "#242222",
    "#2c2928",
    "#322e2b",

    -- Mids
    "#665c54",
    "#7c6f64",
    "#928374",
    "#a89984",

    -- Highs
    "#ae9685",
    "#b9a495",
    "#ccbeb3",
    "#d6cac2",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = M.primaries[2],
    gray = M.primaries[4],

    dark_red = "#c0603f",
    red = "#c57054",

    dark_green = "#7a895c",
    green = "#a6bc90",

    dark_yellow = "#ef9e74",
    yellow = "#e0a66d",

    dark_blue = "#b6b3e5",
    blue = "#a6bbd9",

    dark_magenta = "#d2acc3",
    magenta = "#c4b2d1",

    dark_cyan = "#6a9b86",
    cyan = "#7fb395",

    light_gray = M.primaries[9],
    white = M.primaries[11],
}

---@type BlackAtom.Theme.UI
M.semantics = {
    bg = {
        primary = {
            dark = M.primaries[1],
            main = M.primaries[2],
            light = M.primaries[3],
        },
        secondary = {
            dark = M.primaries[4],
            main = M.primaries[5],
            light = M.primaries[6],
        },
        active = M.primaries[4],
        match = {
            active = lib.color.darken(M.palette.magenta, 0.25, M.primaries[1]),
            passive = lib.color.darken(M.palette.magenta, 0.15, M.primaries[1]),
        },
        diff = {
            add = M.palette.green,
            delete = M.palette.red,
            change = M.palette.blue,
            text = M.palette.dark_blue,
        },
    },
    fg = {
        primary = {
            dark = M.primaries[10],
            main = M.primaries[11],
            light = M.primaries[12],
        },
        secondary = {
            dark = M.primaries[7],
            main = M.primaries[8],
            light = M.primaries[9],
        },
        active = M.palette.dark_yellow,
        invert = M.primaries[2],
        neutral = M.primaries[6],
        diff = {
            add = M.palette.green,
            delete = M.palette.red,
            change = M.palette.blue,
            text = M.palette.dark_blue,
        },
    },
}

---@type BlackAtom.Theme.Colors
M.colors = {
    none = "NONE",
    primaries = M.primaries,
    palette = M.palette,
    semantics = M.semantics,
}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "terra-fall-night",
    label = "Terra Fall Night",
    collection_key = "terra",
    collection_label = "Terra",
    appearance = "dark",
    icon = " 󰖔 ",
    status = "release",
    module_path = "black-atom.themes.terra-fall-night",
}

return M
