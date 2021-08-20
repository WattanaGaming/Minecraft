mineport = {
    path = mtworks.get_current_modpath(),
}

---@param overrides table
---@return table
function mineport.defaultGroupcaps(overrides)
    local groupcaps = {
        oddly_breakable_by_hand = {times={[1]=3.50,[2]=2.00,[3]=0.70}, uses=0}, -- Kept for testing
        grass = {times = {0.9}},
        crumbly = {times = {0.75}},
        wood = {times = {3}},
        leaf = {times = {0.3}},
        plant = {times = {0}},
    }
    if overrides then
        return mtworks.override_table(groupcaps, overrides)
    else
        return groupcaps
    end
end

minetest.log("action", "Running scripts")
mtworks.dir_tree(mineport.path.."/scripts", function(path)
    if path:match("^.+(%..+)$") == ".lua" then
        minetest.log("action", "> "..path)
        dofile(path)
    end
end)
