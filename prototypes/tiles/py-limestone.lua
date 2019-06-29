RECIPE {
    type = "recipe",
    name = "py-limestone",
    category = "crafting-with-fluid",
    enabled = false,
    ingredients = {
        {type = "fluid", name = "water", amount = 10},
        {type = "item", name = "coal", amount = 3},
        {type = "item", name = "stone", amount = 5}
        -- {type="fluid", name="creosote", amount=10},
        -- {type="item", name="ash", amount=3},
        -- {type="item", name="limestone", amount=5},
    },
    results = {
        {"py-limestone", 2}
    },
    requester_paste_multiplier = 4
}:add_unlock("py-asphalt"):replace_ingredient("water", "creosote"):replace_ingredient("coal", "ash"):replace_ingredient("stone", "limestone")

ITEM {
    type = "item",
    name = "py-limestone",
    icon = "__pyindustry__/graphics/icons/py-limestone-icon.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-tiles",
    order = "a-limestone",
    stack_size = 500,
    default_request_amount = 150,
    place_as_tile = {result = "py-limestone", condition_size = 2, condition = {"water-tile"}}
}

ENTITY {
    type = "tile",
    name = "py-limestone",
    needs_correction = false,
    minable = {hardness = 0.2, mining_time = 0.1, result = "py-limestone"},
    mined_sound = {filename = "__base__/sound/deconstruct-bricks.ogg"},
    collision_mask = {"ground-tile"},
    walking_speed_modifier = 2.0,
    layer = 61,
    variants = {
        main = {
            {
                picture = "__pyindustry__/graphics/tiles/py-limestone/py-limestone1.png",
                count = 16,
                size = 1
            },
            {
                picture = "__pyindustry__/graphics/tiles/py-limestone/py-limestone2.png",
                count = 4,
                size = 2,
                probability = 0.39
            },
            {
                picture = "__pyindustry__/graphics/tiles/py-limestone/py-limestone4.png",
                count = 4,
                size = 4,
                probability = 1
            }
        },
        inner_corner = {
            picture = "__pyindustry__/graphics/tiles/py-limestone/py-limestone-inner-corner.png",
            count = 8
        },
        outer_corner = {
            picture = "__pyindustry__/graphics/tiles/py-limestone/py-limestone-outer-corner.png",
            count = 8
        },
        side = {
            picture = "__pyindustry__/graphics/tiles/py-limestone/py-limestone-side.png",
            count = 8
        },
        u_transition = {
            picture = "__pyindustry__/graphics/tiles/py-limestone/py-limestone-u.png",
            count = 8
        },
        o_transition = {
            picture = "__pyindustry__/graphics/tiles/py-limestone/py-limestone-o.png",
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
    --map_color={r=0.90, g=0.70, b=0.50},
    map_color = defines.color.darkgrey,
    pollution_absorption_per_second = 0,
    vehicle_friction_modifier = _G.stone_path_vehicle_speed_modifier
}
