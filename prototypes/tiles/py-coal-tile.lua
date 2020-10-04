RECIPE {
    type = "recipe",
    name = "py-coal-tile",
    category = "crafting",
    enabled = false,
    ingredients = {
        {type = "item", name = "coal", amount = 2}, --ash, 2
        {type = "item", name = "wood", amount = 10} --tailings-dust, 10,
    },
    results = {
        {"py-coal-tile", 1}
    },
    requester_paste_multiplier = 4
}:add_unlock("py-asphalt"):replace_ingredient("coal", "ash"):replace_ingredient("wood", "tailings-dust")

ITEM {
    type = "item",
    name = "py-coal-tile",
    icon = "__pyindustry__/graphics/icons/py-coal-tile-icon.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-tiles",
    order = "a-coal-tile",
    stack_size = 100,
    place_as_tile = {result = "py-coal-tile", condition_size = 2, condition = {"water-tile"}}
}

ENTITY {
    type = "tile",
    name = "py-coal-tile",
    needs_correction = false,
    minable = {mining_time = 0.1, result = "py-coal-tile"},
    mined_sound = {filename = "__base__/sound/deconstruct-bricks.ogg"},
    collision_mask = {"ground-tile"},
    walking_speed_modifier = 1.4,
    decorative_removal_probability = 1,
    layer = 61,
    variants = {
        main = {
            {
                picture = "__pyindustry__/graphics/tiles/py-coal/py-coal-tile.png",
                count = 1,
                size = 1
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
    map_color = defines.color.darkgrey,
    pollution_absorption_per_second = 0,
    vehicle_friction_modifier = _G.stone_path_vehicle_speed_modifier
}
