local lib = require("black-atom.lib")

local M = {}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    -- Lows
    "#1a1a1a",
    "#242424",
    "#2e2e2e",
    "#393939",

    -- Mids
    "#44524d",
    "#576962",
    "#667d75",
    "#8fa29c",

    -- Highs
    "#bbc6c1",
    "#c7d1cd",
    "#d3dfd9",
    "#dfeae5",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = M.primaries[2],
    gray = M.primaries[5],

    dark_red = "#9891d6",
    red = "#a6a1df",

    dark_green = "#93c270",
    green = "#a0ce7d",

    dark_yellow = M.primaries[9],
    yellow = "#9BE197",

    dark_blue = M.primaries[10],
    blue = M.primaries[11],

    dark_magenta = "#a498e9",
    magenta = "#b7aded",

    dark_cyan = "#6ac779",
    cyan = "#88dc96",

    light_gray = M.primaries[8],
    white = M.primaries[11],
}

---@type BlackAtom.Theme.UI
M.ui = {
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
            active = lib.color.darken(M.palette.magenta, 0.15, M.primaries[1]),
            passive = lib.color.darken(M.palette.magenta, 0.05, M.primaries[1]),
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
        active = M.palette.cyan,
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

---TODO: Connect to Highlights
---@type BlackAtom.Theme.Syntax
M.syntax = {
    default = M.palette.gray,
    variable = {
        default = M.primaries[8],
        builtin = M.primaries[8],
        parameter = M.primaries[10],
        member = M.primaries[8],
    },
    constant = {
        default = M.palette.white,
        builtin = M.palette.white,
    },
    module = {
        default = M.palette.dark_blue,
    },
    string = {
        default = M.palette.cyan,
        documentation = M.palette.green,
        regexp = M.palette.dark_yellow,
        escape = M.palette.red,
    },
    boolean = {
        default = M.palette.dark_yellow,
    },
    number = {
        default = M.palette.dark_yellow,
    },
    type = {
        default = M.palette.white,
        builtin = M.palette.white,
    },
    attribute = {
        default = M.palette.dark_yellow,
        builtin = M.palette.dark_yellow,
    },
    func = {
        default = M.palette.yellow,
        builtin = M.palette.yellow,
        method = M.palette.yellow,
    },
    constructor = {
        default = M.palette.blue,
    },
    operator = {
        default = M.palette.magenta,
    },
    keyword = {
        default = M.palette.red,
    },
    punctuation = {
        default = M.palette.light_gray,
        delimiter = M.palette.light_gray,
        bracket = M.palette.light_gray,
        special = M.palette.light_gray,
    },
    comment = {
        default = M.palette.gray,
        documentation = M.palette.green,
    },
    markup = {
        default = M.palette.gray,
        heading = {
            default = M.palette.dark_yellow,
            h1 = M.palette.dark_yellow,
            h2 = M.palette.dark_yellow,
            h3 = M.palette.dark_yellow,
            h4 = M.palette.dark_yellow,
            h5 = M.palette.dark_yellow,
            h6 = M.palette.dark_yellow,
        },
        strong = M.palette.dark_yellow,
        italic = M.palette.dark_yellow,
        strikethrough = M.palette.dark_yellow,
        underline = M.palette.dark_yellow,
        quote = M.palette.dark_yellow,
        math = M.palette.dark_yellow,
        link = {
            default = M.palette.blue,
            label = M.palette.green,
            url = M.palette.blue,
        },
        code = {
            default = M.palette.cyan,
            inline = M.palette.cyan,
            block = M.palette.cyan,
        },
        list = {
            default = M.palette.dark_yellow,
            checked = M.palette.dark_yellow,
            unchecked = M.palette.dark_yellow,
        },
    },
    tag = {
        default = M.palette.yellow,
        builtin = M.palette.yellow,
        custom = M.palette.yellow,
        attribute = M.palette.dark_yellow,
        delimiter = M.palette.dark_yellow,
    },
}

---@type BlackAtom.Theme.Colors
M.colors = {
    none = "NONE",
    primaries = M.primaries,
    palette = M.palette,
    ui = M.ui,
    syntax = M.syntax,
}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-operations",
    label = "Black Atom - Operations",
    collection = {
        key = "default",
        label = "Default",
    },
    appearance = "dark",
    icon = " 󰖔 ",
    status = "release",
}

return M
