minetest.register_node("mineport:grass_block", {
    tiles = {
        "mineport_grass_block_top.png",
        "mineport_dirt.png",
        "mineport_grass_block_side.png",
    },
    groups = {
        grass=1,
    },
})

minetest.register_node("mineport:dirt", {
    tiles = {"mineport_dirt.png"},
    groups = {
        dirt=1,
    },
})
