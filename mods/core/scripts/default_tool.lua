minetest.register_tool(":", {
    type = "none",
    wield_image = "wieldhand.png",
    tool_capabilities = {
        max_drop_level = 0,
        groupcaps = mineport.defaultGroupcaps(),
        damage_groups = {fleshy=1},
    }
})
