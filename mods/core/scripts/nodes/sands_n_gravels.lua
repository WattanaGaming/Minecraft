minetest.register_node("mineport:sand", {
    tiles = {"mineport_sand.png"},
    -- Suffer
    damage_per_second = 2,
    groups = {
        sand=1,
        falling_node=1,
    },
})
