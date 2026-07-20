local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-default-light-dimmed",
    label = "Black Atom — Light Dimmed",
    appearance = "light",
    status = "release",
    collection = {
        key = "default",
        label = "Default",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#03060a",
    d20 = "#0e1217",
    d30 = "#1b2025",
    d40 = "#292e34",
    m10 = "#43484e",
    m20 = "#53595f",
    m30 = "#646a70",
    m40 = "#757b81",
    l10 = "#a8afb5",
    l20 = "#c8ced5",
    l30 = "#d8dfe6",
    l40 = "#e5ecf3",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#0e1217",
    gray = "#43484e",
    dark_red = "#53595f",
    red = "#53595f",
    dark_green = "#757b81",
    green = "#757b81",
    dark_yellow = "#646a70",
    yellow = "#646a70",
    dark_blue = "#53595f",
    blue = "#53595f",
    dark_magenta = "#df6989",
    magenta = "#6791f1",
    dark_cyan = "#409d48",
    cyan = "#2eaf6b",
    light_gray = "#757b81",
    white = "#a8afb5",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#d8dfe6",
        panel = "#c8ced5",
        float = "#c8ced5",
        active = "#e5ecf3",
        disabled = "#a8afb5",
        hover = "#a8afb5",
        selection = "#a8afb5",
        search = "#a8afb5",
        contrast = "#292e34",
        negative = "#f6c9da",
        warn = "#f4d2be",
        info = "#c1dce1",
        hint = "#f4d2be",
        positive = "#bedcbb",
        add = "#bedcbb",
        delete = "#f6c9da",
        modify = "#c1dce1",
    },
    fg = {
        default = "#0e1217",
        subtle = "#43484e",
        accent = "#2eaf6b",
        disabled = "#646a70",
        contrast = "#c8ced5",
        negative = "#ff50a7",
        warn = "#ff7e00",
        info = "#00abc1",
        hint = "#ff7e00",
        positive = "#00a800",
        add = "#00a800",
        delete = "#ff50a7",
        modify = "#00abc1",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#292e34",
        builtin = "#292e34",
        member = "#53595f",
        parameter = "#df6989",
    },
    property = {
        default = "#53595f",
    },
    string = {
        default = "#409d48",
        doc = "#409d48",
        regexp = "#409d48",
        escape = "#409d48",
    },
    constant = {
        default = "#292e34",
        builtin = "#1b2025",
    },
    module = {
        default = "#1b2025",
    },
    boolean = {
        default = "#409d48",
    },
    number = {
        default = "#409d48",
    },
    type = {
        default = "#2eaf6b",
        builtin = "#409d48",
    },
    attribute = {
        default = "#2eaf6b",
        builtin = "#409d48",
    },
    func = {
        default = "#1b2025",
        builtin = "#0e1217",
        method = "#0e1217",
    },
    constructor = {
        default = "#1b2025",
    },
    keyword = {
        default = "#6791f1",
        import = "#df6989",
        export = "#df6989",
    },
    operator = {
        default = "#1b2025",
    },
    punctuation = {
        default = "#292e34",
        delimiter = "#292e34",
        bracket = "#292e34",
        special = "#292e34",
    },
    comment = {
        default = "#757b81",
        doc = "#2eaf6b",
        todo = "#00a800",
        error = "#ff50a7",
        warn = "#ff7e00",
        info = "#00abc1",
        hint = "#00abc1",
    },
    markup = {
        heading = {
            h1 = "#2eaf6b",
            h2 = "#2eaf6b",
            h3 = "#2eaf6b",
            h4 = "#292e34",
            h5 = "#292e34",
            h6 = "#292e34",
        },
        strong = "#2eaf6b",
        italic = "#2eaf6b",
        strikethrough = "#43484e",
        quote = "#53595f",
        math = "#53595f",
        link = "#2eaf6b",
        list = {
            default = "#43484e",
            checked = "#00a800",
            unchecked = "#43484e",
        },
        code = {
            fg = "#292e34",
            bg = "#c8ced5",
        },
    },
    tag = {
        default = "#2eaf6b",
        builtin = "#409d48",
        attribute = "#43484e",
        delimiter = "#43484e",
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
