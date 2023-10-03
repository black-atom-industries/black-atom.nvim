local M = {}

---Capitzlize first character of a string
---@param str string
---@return string
function M.capitalize(str)
    return string.gsub(" " .. str, "%W%l", string.upper):sub(2)
end

---Calls a function conditionally
---@param condition boolean
---@param cb_true function
---@param cb_false? function
---@return nil
function M.ccall(condition, cb_true, cb_false)
    if condition then
        cb_true()
    elseif cb_false then
        cb_false()
    end
end

---Merge multiple tables into target
---@param target table
---@vararg table
---@return table
---@example
---```lua
---local a = { 1, 2, 3 }
---local b = { 4, 5, 6 }
---local c = { 7, 8, 9 }
---local d = M.merge_multiple_tables({}, a, b, c)
---print(vim.inspect(d))`
---```
function M.merge_multiple_tables(target, ...)
    local result = target

    for _, tbl in ipairs({ ... }) do
        for _, value in ipairs(tbl) do
            table.insert(result, value)
        end
    end

    return result
end

---Lua equavalent of Array.prototype.map
---@param tbl table
---@param func function
---@return table
function M.map(tbl, func)
    local newTbl = {}
    for i, v in pairs(tbl) do
        newTbl[i] = func(v, i, tbl)
    end
    return newTbl
end

return M
