mineport = {
    path = utils.get_current_modpath(),

    colors = {
        water_post_effect = "#57c5d840"
    },

    default_group_caps = {
        oddly_breakable_by_hand = {times={[1]=3.50,[2]=2.00,[3]=0.70}, uses=0}, -- Kept for testing
        grass = {times = {0.9,0.45,0.25,0.15,0.15,0.1,0.1}},
        dirt = {times = {0.75,0.4,0.2,0.15,0.1,0.1,0.1}},
        stone = {times = {7.5,1.15,0.6,0.4,0.3,0.25,0.2}},
        sand = {times = {0.75,0.4,0.2,0.15,0.1,0.1,0.1}},
    },

    water_range = 7,
    water_viscosity = 0,
    water_drowning = 1,
}

minetest.log("action", "Running scripts")
utils.dir_tree(mineport.path.."/scripts", function(path)
    if path:match("^.+(%..+)$") == ".lua" then
        minetest.log("action", "> "..path)
        dofile(path)
    end
end)
