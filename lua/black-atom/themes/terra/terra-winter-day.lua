local lib = require("black-atom.lib")

local M = {}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    -- Lows
    "#192125",
    "#1d272c",
    "#212c31",
    "#24333a",

    -- Mids
    "#475e6a",
    "#516c7a",
    "#5b7988",
    "#7393a3",

    -- Highs
    "#d3cec5",
    "#dfdbd3",
    "#e9e6e1",
    "#f4f3f1",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = M.primaries[1],
    gray = M.primaries[4],

    dark_red = "#d6582e",
    red = "#da714d",

    dark_green = "#5b9257",
    green = "#83c67f",

    dark_yellow = "#faa04c",
    yellow = "#F2C14E",

    dark_blue = "#6199d1",
    blue = "#7CA6CF",

    dark_magenta = "#B07BAC",
    magenta = "#BFA9D6",

    dark_cyan = "#5aaf7d",
    cyan = "#75bd93",

    light_gray = M.primaries[9],
    white = M.primaries[11],
}

---@type BlackAtom.Theme.UI
M.semantics = {
    bg = {
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
        active = M.primaries[5],
        match = {
            active = lib.color.darken(M.palette.magenta, 0.25, M.primaries[12]),
            passive = lib.color.darken(M.palette.magenta, 0.15, M.primaries[12]),
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
            dark = M.primaries[1],
            main = M.primaries[2],
            light = M.primaries[3],
        },
        secondary = {
            dark = M.primaries[4],
            main = M.primaries[5],
            light = M.primaries[6],
        },
        active = M.palette.yellow,
        invert = M.primaries[11],
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
    key = "terra-winter-day",
    label = "Terra Winter Day",
    collection_key = "terra",
    collection_label = "Terra",
    appearance = "light",
    icon = "  ",
    status = "development",
    module_path = "black-atom.themes.terra-winter-day",
}

return M
