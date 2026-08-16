local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-paper-blue-dark",
    label = "Black Atom — PAPER ∷ Blue Dark",
    appearance = "dark",
    status = "development",
    collection = {
        key = "paper",
        label = "PAPER",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#08173f",
    d20 = "#152650",
    d30 = "#1e305b",
    d40 = "#283b67",
    m10 = "#4d6291",
    m20 = "#6379aa",
    m30 = "#8098ca",
    m40 = "#9eb7eb",
    l10 = "#d1d8e5",
    l20 = "#dee5f2",
    l30 = "#ebf2ff",
    l40 = "#f5fcff",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#283b67",
    gray = "#4d6291",
    dark_red = "#9eb7eb",
    red = "#9eb7eb",
    dark_green = "#8098ca",
    green = "#8098ca",
    dark_yellow = "#8098ca",
    yellow = "#8098ca",
    dark_blue = "#9eb7eb",
    blue = "#9eb7eb",
    dark_magenta = "#8098ca",
    magenta = "#8098ca",
    dark_cyan = "#9eb7eb",
    cyan = "#9eb7eb",
    light_gray = "#9eb7eb",
    white = "#9eb7eb",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#152650",
        panel = "#08173f",
        float = "#08173f",
        active = "#1e305b",
        disabled = "#283b67",
        hover = "#1e305b",
        selection = "#283b67",
        search = "#283b67",
        contrast = "#d1d8e5",
        negative = "#623e3e",
        warn = "#5f523d",
        info = "#3f535b",
        hint = "#5f523d",
        positive = "#4f553f",
        add = "#4f553f",
        delete = "#623e3e",
        modify = "#3f535b",
    },
    fg = {
        default = "#ebf2ff",
        subtle = "#8098ca",
        accent = "#fa8f19",
        disabled = "#6379aa",
        contrast = "#152650",
        negative = "#dd7577",
        warn = "#d6b174",
        info = "#79b5cc",
        hint = "#d6b174",
        positive = "#a9ba78",
        add = "#a9ba78",
        delete = "#dd7577",
        modify = "#79b5cc",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#dee5f2",
        builtin = "#d1d8e5",
        member = "#8098ca",
        parameter = "#81dcff",
    },
    property = {
        default = "#8098ca",
    },
    string = {
        default = "#dee5f2",
        doc = "#d1d8e5",
        regexp = "#f5fcff",
        escape = "#f5fcff",
    },
    constant = {
        default = "#d1d8e5",
        builtin = "#dee5f2",
    },
    module = {
        default = "#dee5f2",
    },
    boolean = {
        default = "#9eb7eb",
    },
    number = {
        default = "#d1d8e5",
    },
    type = {
        default = "#f5fcff",
        builtin = "#f5fcff",
    },
    attribute = {
        default = "#81dcff",
        builtin = "#81dcff",
    },
    func = {
        default = "#fa8f19",
        builtin = "#81dcff",
        method = "#81dcff",
    },
    constructor = {
        default = "#fa8f19",
    },
    keyword = {
        default = "#ebf2ff",
        import = "#f5fcff",
        export = "#f5fcff",
    },
    operator = {
        default = "#ebf2ff",
    },
    punctuation = {
        default = "#d1d8e5",
        delimiter = "#d1d8e5",
        bracket = "#d1d8e5",
        special = "#d1d8e5",
    },
    comment = {
        default = "#8098ca",
        doc = "#8098ca",
        todo = "#a9ba78",
        error = "#dd7577",
        warn = "#d6b174",
        info = "#79b5cc",
        hint = "#79b5cc",
    },
    markup = {
        heading = {
            h1 = "#fa8f19",
            h2 = "#fa8f19",
            h3 = "#fa8f19",
            h4 = "#9eb7eb",
            h5 = "#9eb7eb",
            h6 = "#9eb7eb",
        },
        strong = "#fa8f19",
        italic = "#fa8f19",
        strikethrough = "#fa8f19",
        quote = "#6379aa",
        math = "#6379aa",
        link = "#81dcff",
        list = {
            default = "#9eb7eb",
            checked = "#a9ba78",
            unchecked = "#9eb7eb",
        },
        code = {
            fg = "#d1d8e5",
            bg = "#08173f",
        },
    },
    tag = {
        default = "#fa8f19",
        builtin = "#81dcff",
        attribute = "#8098ca",
        delimiter = "#d1d8e5",
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
