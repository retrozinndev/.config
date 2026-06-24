--- clone `dict` to a new table (recursively)
---@param dict table
---@return table
function Clone_dict_table(dict)
    local clone = {};
    for key, value in pairs(dict) do
        if type(value) == "table" then
            clone[key] = Clone_dict_table(value);
            goto continue;
        end

        clone[key] = value;

        ::continue::
    end

    return clone;
end

--- merge `table1` with `table2`, by cloning `table2` and returning a merged
--- version of the cloned table.
--- skip - whether to skip entries that already are attributed to `table2`
--- (if false, `table1` overwrites keys in `table2`)
---@param table1 table
---@param table2 table
---@param skip boolean
---@return table
function Merge_dict_tables(table1, table2, skip)
    local target = Clone_dict_table(table2);
    for k, v in pairs(table1) do
        if table2[k] ~= nil and skip then
            goto continue;
        end

        target[k] = v;
        ::continue::
    end

    return target;
end

--- concatenates `arr2` to `arr1`, modifying the original `arr1`
---@param arr1 table<number, string>
---@param arr2 table<number, string>
function Concat_arrays(arr1, arr2)
    for _, val in ipairs(arr2) do
        table.insert(arr1, val);
    end

    return arr1;
end

--- gets the length of items in `dict`
---@param dict table
---@return number
function Dict_table_len(dict)
    local len = 0;

    for _, _ in pairs(dict) do
        len = len + 1;
    end

    return len;
end

---@param str string
---@param separator string
---@return table<number, string>
function String_split(str, separator)
    local strarr = {};

    for part in string.gmatch(str, "([^".. separator .."]+)") do
        table.insert(strarr, part);
    end

    return strarr;
end;
