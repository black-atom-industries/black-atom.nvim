local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-default-dark-dimmed",
    label = "Black Atom — Dark Dimmed",
    appearance = "dark",
    status = "release",
    collection = {
        key = "default",
        label = "Default",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#12171b",
    d20 = "#20252a",
    d30 = "#2e3339",
    d40 = "#3e4349",
    m10 = "#595e64",
    m20 = "#6a6f76",
    m30 = "#7b8187",
    m40 = "#8d9399",
    l10 = "#d2d8df",
    l20 = "#dbe2e9",
    l30 = "#e5ecf3",
    l40 = "#eff6fd",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#3e4349",
    gray = "#6a6f76",
    dark_red = "#8d9399",
    red = "#8d9399",
    dark_green = "#8d9399",
    green = "#8d9399",
    dark_yellow = "#7b8187",
    yellow = "#7b8187",
    dark_blue = "#6a6f76",
    blue = "#6a6f76",
    dark_magenta = "#fb82a1",
    magenta = "#7faaff",
    dark_cyan = "#5bb661",
    cyan = "#4ec983",
    light_gray = "#dbe2e9",
    white = "#e5ecf3",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#20252a",
        panel = "#12171b",
        float = "#12171b",
        active = "#2e3339",
        disabled = "#3e4349",
        hover = "#2e3339",
        selection = "#3e4349",
        search = "#3e4349",
        contrast = "#d2d8df",
        negative = "#633943",
        warn = "#5e4123",
        info = "#255154",
        hint = "#5e4123",
        positive = "#2f5136",
        add = "#2f5136",
        delete = "#633943",
        modify = "#255154",
    },
    fg = {
        default = "#e5ecf3",
        subtle = "#7b8187",
        accent = "#4ec983",
        disabled = "#6a6f76",
        contrast = "#20252a",
        negative = "#e97292",
        warn = "#dd881b",
        info = "#00b9c3",
        hint = "#dd881b",
        positive = "#4cb86a",
        add = "#4cb86a",
        delete = "#e97292",
        modify = "#00b9c3",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#d2d8df",
        builtin = "#d2d8df",
        member = "#7b8187",
        parameter = "#fb82a1",
    },
    property = {
        default = "#7b8187",
    },
    string = {
        default = "#5bb661",
        doc = "#5bb661",
        regexp = "#5bb661",
        escape = "#5bb661",
    },
    constant = {
        default = "#d2d8df",
        builtin = "#dbe2e9",
    },
    module = {
        default = "#dbe2e9",
    },
    boolean = {
        default = "#5bb661",
    },
    number = {
        default = "#5bb661",
    },
    type = {
        default = "#4ec983",
        builtin = "#5bb661",
    },
    attribute = {
        default = "#4ec983",
        builtin = "#5bb661",
    },
    func = {
        default = "#e5ecf3",
        builtin = "#dbe2e9",
        method = "#dbe2e9",
    },
    constructor = {
        default = "#e5ecf3",
    },
    keyword = {
        default = "#7faaff",
        import = "#fb82a1",
        export = "#fb82a1",
    },
    operator = {
        default = "#dbe2e9",
    },
    punctuation = {
        default = "#d2d8df",
        delimiter = "#d2d8df",
        bracket = "#d2d8df",
        special = "#d2d8df",
    },
    comment = {
        default = "#595e64",
        doc = "#4ec983",
        todo = "#4cb86a",
        error = "#e97292",
        warn = "#dd881b",
        info = "#00b9c3",
        hint = "#00b9c3",
    },
    markup = {
        heading = {
            h1 = "#4ec983",
            h2 = "#4ec983",
            h3 = "#4ec983",
            h4 = "#d2d8df",
            h5 = "#d2d8df",
            h6 = "#d2d8df",
        },
        strong = "#4ec983",
        italic = "#4ec983",
        strikethrough = "#8d9399",
        quote = "#7b8187",
        math = "#7b8187",
        link = "#4ec983",
        list = {
            default = "#8d9399",
            checked = "#4cb86a",
            unchecked = "#8d9399",
        },
        code = {
            fg = "#d2d8df",
            bg = "#12171b",
        },
    },
    tag = {
        default = "#4ec983",
        builtin = "#5bb661",
        attribute = "#8d9399",
        delimiter = "#8d9399",
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
