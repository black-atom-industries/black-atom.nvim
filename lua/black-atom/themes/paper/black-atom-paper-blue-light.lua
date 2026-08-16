local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-paper-blue-light",
    label = "Black Atom — PAPER ∷ Blue Light",
    appearance = "light",
    status = "development",
    collection = {
        key = "paper",
        label = "PAPER",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#07007c",
    d20 = "#040089",
    d30 = "#061d9d",
    d40 = "#153bb7",
    m10 = "#2955d3",
    m20 = "#3e6fef",
    m30 = "#497cfd",
    m40 = "#5a8fff",
    l10 = "#dbdee5",
    l20 = "#e4e8ef",
    l30 = "#f2f5fc",
    l40 = "#f8fcff",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#153bb7",
    gray = "#2955d3",
    dark_red = "#5a8fff",
    red = "#5a8fff",
    dark_green = "#497cfd",
    green = "#497cfd",
    dark_yellow = "#497cfd",
    yellow = "#497cfd",
    dark_blue = "#5a8fff",
    blue = "#5a8fff",
    dark_magenta = "#497cfd",
    magenta = "#497cfd",
    dark_cyan = "#5a8fff",
    cyan = "#5a8fff",
    light_gray = "#5a8fff",
    white = "#5a8fff",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#f2f5fc",
        panel = "#e4e8ef",
        float = "#e4e8ef",
        active = "#f8fcff",
        disabled = "#dbdee5",
        hover = "#e4e8ef",
        selection = "#dbdee5",
        search = "#dbdee5",
        contrast = "#153bb7",
        negative = "#ffd3cf",
        warn = "#f1dbc7",
        info = "#cbe6f8",
        hint = "#f1dbc7",
        positive = "#dbe4c7",
        add = "#dbe4c7",
        delete = "#ffd3cf",
        modify = "#cbe6f8",
    },
    fg = {
        default = "#040089",
        subtle = "#2955d3",
        accent = "#275bff",
        disabled = "#497cfd",
        contrast = "#e4e8ef",
        negative = "#f14d4c",
        warn = "#cd7b00",
        info = "#00a3e9",
        hint = "#cd7b00",
        positive = "#819e00",
        add = "#819e00",
        delete = "#f14d4c",
        modify = "#00a3e9",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#061d9d",
        builtin = "#153bb7",
        member = "#0f35dc",
        parameter = "#0f35dc",
    },
    property = {
        default = "#2955d3",
    },
    string = {
        default = "#3e6fef",
        doc = "#0f35dc",
        regexp = "#275bff",
        escape = "#275bff",
    },
    constant = {
        default = "#040089",
        builtin = "#07007c",
    },
    module = {
        default = "#061d9d",
    },
    boolean = {
        default = "#2955d3",
    },
    number = {
        default = "#153bb7",
    },
    type = {
        default = "#07007c",
        builtin = "#153bb7",
    },
    attribute = {
        default = "#0f35dc",
        builtin = "#0f35dc",
    },
    func = {
        default = "#275bff",
        builtin = "#0f35dc",
        method = "#0f35dc",
    },
    constructor = {
        default = "#275bff",
    },
    keyword = {
        default = "#0f35dc",
        import = "#0f35dc",
        export = "#0f35dc",
    },
    operator = {
        default = "#040089",
    },
    punctuation = {
        default = "#153bb7",
        delimiter = "#153bb7",
        bracket = "#153bb7",
        special = "#153bb7",
    },
    comment = {
        default = "#3e6fef",
        doc = "#3e6fef",
        todo = "#819e00",
        error = "#f14d4c",
        warn = "#cd7b00",
        info = "#00a3e9",
        hint = "#00a3e9",
    },
    markup = {
        heading = {
            h1 = "#275bff",
            h2 = "#275bff",
            h3 = "#275bff",
            h4 = "#2955d3",
            h5 = "#2955d3",
            h6 = "#2955d3",
        },
        strong = "#275bff",
        italic = "#275bff",
        strikethrough = "#275bff",
        quote = "#497cfd",
        math = "#3e6fef",
        link = "#0f35dc",
        list = {
            default = "#2955d3",
            checked = "#819e00",
            unchecked = "#2955d3",
        },
        code = {
            fg = "#153bb7",
            bg = "#e4e8ef",
        },
    },
    tag = {
        default = "#0f35dc",
        builtin = "#275bff",
        attribute = "#2955d3",
        delimiter = "#497cfd",
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

return M
