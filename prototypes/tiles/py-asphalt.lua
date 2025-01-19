RECIPE {
    type = "recipe",
    name = "py-asphalt",
    category = "crafting-with-fluid",
    enabled = false,
    ingredients = {
        {type = "fluid", name = "water", amount = 10},
        {type = "item",  name = "coal",  amount = 3},
        {type = "item",  name = "stone", amount = 5}
    },
    results = {
        {type = "item", name = "py-asphalt", amount = 1}
    },
    requester_paste_multiplier = 4,
    energy_required = 3
}:add_unlock("py-asphalt"):replace_ingredient("water", "tar"):replace_ingredient("coal", "ash"):replace_ingredient("stone", "gravel")

ITEM {
    type = "item",
    name = "py-asphalt",
    icon = "__base__/graphics/terrain/lab-tiles/lab-dark-2.png",
    icon_size = 1,
    flags = {},
    subgroup = "py-tiles",
    order = "zb",
    stack_size = 1000,
    place_as_tile = {result = "py-asphalt", condition_size = 1, condition = {layers = {water_tile = true}}}
}

TILE {
    type = "tile",
    name = "py-asphalt",
    needs_correction = false,
    minable = {mining_time = 0.1, result = "py-asphalt"},
    mined_sound = {filename = "__base__/sound/deconstruct-bricks.ogg"},
    collision_mask = {layers = {ground_tile = true}},
    walking_speed_modifier = 3.25,
    decorative_removal_probability = 1,
    layer = 9,
    layer_group = "ground-artificial",
    variants = {
        material_background = {
            picture = "__pyindustrygraphics__/graphics/tiles/py-asphalt/py-asphalt.png",
            count = 8,
            scale = 0.5
        },
        transition = {
            mask_layout = {
                inner_corner = {
                    spritesheet = "__pyindustrygraphics__/graphics/tiles/py-asphalt/py-asphalt-inner-corner-mask.png",
                    count = 8,
                    scale = 0.5
                },
                outer_corner = {
                    spritesheet = "__pyindustrygraphics__/graphics/tiles/py-asphalt/py-asphalt-outer-corner-mask.png",
                    count = 8,
                    scale = 0.5
                },
                side = {
                    spritesheet = "__pyindustrygraphics__/graphics/tiles/py-asphalt/py-asphalt-side-mask.png",
                    count = 8,
                    scale = 0.5
                },
                u_transition = {
                    spritesheet = "__pyindustrygraphics__/graphics/tiles/py-asphalt/py-asphalt-u-mask.png",
                    count = 8,
                    scale = 0.5
                },
                o_transition = {
                    spritesheet = "__pyindustrygraphics__/graphics/tiles/py-asphalt/py-asphalt-o-mask.png",
                    count = 4,
                    scale = 0.5
                }
            }
        }
    },
    walking_sound = table.deepcopy(data.raw.tile["grass-1"].walking_sound),
    map_color = {r = 0, g = 0, b = 0, a = 1},
    absorptions_per_second = {pollution = 0},
    vehicle_friction_modifier = 0.6,
}
