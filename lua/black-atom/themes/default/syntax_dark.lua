---@param primaries BlackAtom.Theme.Primaries
---@param palette BlackAtom.Theme.Palette
---@return BlackAtom.Theme.Syntax
return function(primaries, palette)
    return {
        variable = {
            default = primaries[8],
            builtin = primaries[9],
            member = primaries[6],
            parameter = primaries[8],
        },
        property = {
            default = primaries[8],
        },
        string = {
            default = palette.green,
            doc = palette.green,
            regexp = palette.red,
            escape = palette.red,
        },
        constant = {
            default = palette.white,
            builtin = palette.dark_red,
        },
        module = {
            default = palette.dark_blue,
        },
        boolean = {
            default = palette.dark_green,
        },
        number = {
            default = palette.dark_green,
        },
        type = {
            default = palette.cyan,
            builtin = palette.dark_cyan,
        },
        attribute = {
            default = palette.dark_yellow,
            builtin = palette.dark_yellow,
        },
        func = {
            default = palette.yellow,
            builtin = palette.yellow,
            method = palette.yellow,
        },
        constructor = {
            default = palette.yellow,
        },
        keyword = {
            default = palette.magenta,
            import = palette.red,
            export = palette.red,
        },
        operator = {
            default = palette.magenta,
        },
        punctuation = {
            default = palette.light_gray,
            delimiter = palette.light_gray,
            bracket = primaries[7],
            special = palette.white,
        },
        comment = {
            default = palette.gray,
            doc = palette.dark_green,
            todo = palette.green,
            error = palette.red,
            warn = palette.yellow,
            info = palette.blue,
            hint = palette.dark_yellow,
        },
        markup = {
            heading = {
                h1 = palette.yellow,
                h2 = palette.yellow,
                h3 = palette.yellow,
                h4 = palette.light_gray,
                h5 = palette.light_gray,
                h6 = palette.light_gray,
            },
            list = {
                default = palette.light_gray,
                checked = palette.green,
                unchecked = palette.light_gray,
            },
            quote = palette.green,
            math = palette.dark_green,
            link = palette.green,
            code = palette.light_gray,
        },
        tag = {
            default = palette.yellow,
            builtin = palette.dark_yellow,
            custom = palette.yellow,
            attribute = primaries[8],
            delimiter = primaries[9],
        },
    }
end