local utils = require("terra-core.utils")

local M = {}

---@type TerraColors.Debug
M.debug = {
    neon_pink = "#FF69B4",
    electric_lime = "#CCFF00",
    vivid_cyan = "#00FFFF",
}

---@type TerraColors.Primaries
M.primaries = {
    -- Lows
    "#191c25",
    "#1d202b",
    "#212531",
    "#252a38",

    -- Mids
    "#47506b",
    "#5b678a",
    "#7581a4",
    "#949db8",

    -- Highs
    "#c5b7a0",
    "#d8c8a8",
    "#efe3c2",
    "#fcf3d1",
}

---@type TerraColors.Palette
M.palette = {
    black = M.primaries[4],
    gray = M.primaries[5],

    dark_red = "#b2674d",
    red = "#bb755e",

    dark_green = "#728d67",
    green = "#98b894",

    dark_yellow = "#f7a56c",
    yellow = "#dbb372",

    dark_blue = "#aca6f2",
    blue = "#96b8e9",

    dark_magenta = "#d9a5c4",
    magenta = "#c5acd7",

    dark_cyan = "#679980",
    cyan = "#84aea0",

    light_gray = M.primaries[9],
    white = M.primaries[11],
}

---@type TerraColors.Semantics
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
        active = M.primaries[5],
        match = {
            active = utils.color.darken(M.palette.magenta, 0.35, M.primaries[3]),
            passive = utils.color.darken(M.palette.magenta, 0.15, M.primaries[1]),
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
        active = M.palette.yellow,
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

---@return TerraColors
M.colors = function()
    return {
        none = "none",
        debug = M.debug,
        primaries = M.primaries,
        palette = M.palette,
        semantics = M.semantics,
    }
end

return M
