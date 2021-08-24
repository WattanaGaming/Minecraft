minetest.register_tool(":", {
    type = "none",
    wield_image = "wieldhand.png",
    tool_capabilities = {
        max_drop_level = 0,
        groupcaps = mineport.default_group_caps,
        damage_groups = {fleshy=1},
    }
})
