RECIPE {
    type = "recipe",
    name = "py-iron-oxide",
    category = "hpf",
    enabled = false,
    ingredients = {
        {type = "item", name = "iron-oxide", amount = 2},
        {type = "item", name = "coarse", amount = 10},
        {type = "fluid", name = "dirty-water-light", amount = 20}
    },
    results = {
        {"py-iron-oxide", 1}
    },
    requester_paste_multiplier = 4
}:add_unlock("py-asphalt")

ITEM {
    type = "item",
    name = "py-iron-oxide",
    icon = "__pyindustry__/graphics/icons/py-iron-oxide.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-tiles",
    order = "a-iron-oxide",
    stack_size = 500,
    place_as_tile = {result = "py-iron-oxide", condition_size = 2, condition = {"water-tile"}}
}

ENTITY {
    type = "tile",
    name = "py-iron-oxide",
    needs_correction = false,
    minable = {mining_time = 0.1, result = "py-iron-oxide"},
    mined_sound = {filename = "__base__/sound/deconstruct-bricks.ogg"},
    collision_mask = {"ground-tile"},
    walking_speed_modifier = 2.5,
    decorative_removal_probability = 1,
    layer = 61,
    variants = {
        main = {
            {
                picture = "__pyindustry__/graphics/tiles/py-iron-oxide/py-iron-oxide.png",
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
            filename = "__pyindustry__/sounds/iron-foot-01.ogg",
            volume = 0.7
        },
        {
            filename = "__pyindustry__/sounds/iron-foot-02.ogg",
            volume = 0.7
        },
        {
            filename = "__pyindustry__/sounds/iron-foot-04.ogg",
            volume = 0.7
        },
        {
            filename = "__pyindustry__/sounds/iron-foot-03.ogg",
            volume = 0.7
        }
    },
    map_color = defines.color.darkgrey,
    pollution_absorption_per_second = 0,
    vehicle_friction_modifier = _G.stone_path_vehicle_speed_modifier
}
