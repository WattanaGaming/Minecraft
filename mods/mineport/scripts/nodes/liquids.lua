local water_tile = "mineport_water_still.png"

minetest.register_node("mineport:water", {
    drawtype = "liquid",
    use_texture_alpha = "blend",
    waving = 3,
    tiles = {
        {
            name = water_tile,
            backface_culling = false,
            animation = {
                type = "vertical_frames",
                aspect_w = 16,
                aspect_h = 16,
                length = 3,
            }
        }
    },

    post_effect_color = mineport.colors.water_post_effect,
    paramtype = "light",
    is_ground_content = false,
    walkable = false,
    pointable = false,
    diggable = false,
    buildable_to = true,

    liquidtype = "source",
    liquid_alternative_flowing = "mineport:flowing_water",
    liquid_alternative_source = "mineport:water",
    liquid_viscosity = mineport.water_viscosity,
    liquid_renewable = true,
    liquid_range = mineport.water_range,
    drowning = mineport.water_drowning,
})

minetest.register_node("mineport:flowing_water", {
    drawtype = "flowingliquid",
    use_texture_alpha = "blend",
    waving = 3,
    special_tiles = {
        {
            name = water_tile,
            backface_culling = false,
            animation = {
                type = "vertical_frames",
                aspect_w = 16,
                aspect_h = 16,
                length = 3,
            }
        },
        {
            name = water_tile,
            backface_culling = false,
            animation = {
                type = "vertical_frames",
                aspect_w = 16,
                aspect_h = 16,
                length = 3,
            }
        }
    },

    post_effect_color = mineport.colors.water_post_effect,
    paramtype = "light",
    is_ground_content = false,
    walkable = false,
    pointable = false,
    diggable = false,
    buildable_to = true,

    liquidtype = "flowing",
    liquid_alternative_flowing = "mineport:flowing_water",
    liquid_alternative_source = "mineport:water",
    liquid_viscosity = mineport.water_viscosity,
    liquid_renewable = true,
    liquid_range = mineport.water_range,
    drowning = mineport.water_drowning,
})
