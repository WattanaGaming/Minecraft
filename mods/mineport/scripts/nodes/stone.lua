minetest.register_node("mineport:stone", {
    tiles = {"mineport_stone.png"},
    groups = {
        stone=1,
    },
})
minetest.register_alias("mapgen_stone", "mineport:stone")
