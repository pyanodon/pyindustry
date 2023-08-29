RECIPE {
    type = "recipe",
    name = "py-asphalt",
    category = "crafting-with-fluid",
    enabled = false,
    ingredients = {
        {type = "fluid", name = "water", amount = 10},
        {type = "item", name = "coal", amount = 3},
        {type = "item", name = "stone", amount = 5}
    },
    results = {
        {"py-asphalt", 1}
    },
    requester_paste_multiplier = 4
}:add_unlock("py-asphalt"):replace_ingredient("water", "tar"):replace_ingredient("coal", "ash"):replace_ingredient("stone", "gravel")

ITEM {
    type = "item",
    name = "py-asphalt",
    icon = "__pyindustry__/graphics/icons/py-asphalt-icon.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-tiles",
    order = "a-asphalt",
    stack_size = 1000,
    default_request_amount = 150,
    place_as_tile = {result = "py-asphalt", condition_size = 1, condition = {"water-tile"}}
}

ENTITY {
    type = "tile",
    name = "py-asphalt",
    needs_correction = false,
    minable = {mining_time = 0.1, result = "py-asphalt"},
    mined_sound = {filename = "__base__/sound/deconstruct-bricks.ogg"},
    collision_mask = {"ground-tile"},
    walking_speed_modifier = 2.5,
    decorative_removal_probability = 1,
    layer = 54,
    variants = {
        main = {
            {
                picture = "__pyindustry__/graphics/tiles/py-asphalt/py-asphalt1.png",
                count = 16,
                size = 1
            },
            {
                picture = "__pyindustry__/graphics/tiles/py-asphalt/py-asphalt2.png",
                count = 4,
                size = 2,
                probability = 0.39
            },
            {
                picture = "__pyindustry__/graphics/tiles/py-asphalt/py-asphalt4.png",
                count = 4,
                size = 4,
                probability = 1
            }
        },
        inner_corner = {
            picture = "__pyindustry__/graphics/tiles/py-asphalt/concrete-inner-corner.png",
            count = 8
        },
        outer_corner = {
            picture = "__pyindustry__/graphics/tiles/py-asphalt/concrete-outer-corner.png",
            count = 8
        },
        side = {
            picture = "__pyindustry__/graphics/tiles/py-asphalt/concrete-side.png",
            count = 8
        },
        u_transition = {
            picture = "__pyindustry__/graphics/tiles/py-asphalt/concrete-u.png",
            count = 8
        },
        o_transition = {
            picture = "__pyindustry__/graphics/tiles/py-asphalt/concrete-o.png",
            count = 1
        }
    },
    walking_sound = {
        {
            filename = "__base__/sound/walking/concrete-01.ogg",
            volume = 1.2
        },
        {
            filename = "__base__/sound/walking/concrete-02.ogg",
            volume = 1.2
        },
        {
            filename = "__base__/sound/walking/concrete-03.ogg",
            volume = 1.2
        },
        {
            filename = "__base__/sound/walking/concrete-04.ogg",
            volume = 1.2
        }
    },
    map_color = {r = 0, g = 0, b = 0, a = 1},
    pollution_absorption_per_second = 0,
    vehicle_friction_modifier = 0.75
}
