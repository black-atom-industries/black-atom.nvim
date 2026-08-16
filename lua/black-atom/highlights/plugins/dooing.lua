---@doc https://github.com/atiladefreitas/dooing
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function()
        ---@type BlackAtom.Highlights
        return {
            DooingPending = { link = "Question" },
            DooingDone = { link = "Comment" },
            DooingHelpText = { link = "Directory" },
            DooingTimestamp = { link = "Comment" },
            DooingSectionTitle = { link = "Title" },
            DooingSectionCount = { link = "Comment" },
            DooingSectionRule = { link = "NonText" },
            DooingTreeGuide = { link = "NonText" },
            DooingText = { link = "Normal" },
            DooingMeta = { link = "Comment" },
            DooingTag = { link = "Type" },
            DooingOverdue = { link = "DiagnosticError" },
            DooingDueToday = { link = "DiagnosticWarn" },
            DooingDueSoon = { link = "DiagnosticInfo" },
            DooingProgressOn = { link = "DiagnosticOk" },
            DooingProgressOff = { link = "NonText" },
            DooingQuickTitle = { link = "Title" },
            DooingQuickKey = { link = "Identifier" },
            DooingQuickDesc = { link = "Comment" },
        }
    end,
}
