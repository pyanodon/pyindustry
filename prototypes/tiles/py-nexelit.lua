RECIPE {
    type = "recipe",
    name = "py-nexelit",
    category = "hpf",
    enabled = false,
    ingredients = {
        {type = "item", name = "nexelit-plate", amount = 1},
        {type = "item", name = "gravel", amount = 2},
        {type = "fluid", name = "tar", amount = 20}
    },
    results = {
        {"py-nexelit", 2}
    },
    requester_paste_multiplier = 4
}:add_unlock("py-asphalt-mk02", "nexelit-mk02")

ITEM {
    type = "item",
    name = "py-nexelit",
    icon = "__pyindustry__/graphics/icons/py-nexelit.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-tiles",
    order = "a-nexelit",
    stack_size = 500,
    place_as_tile = {result = "py-nexelit", condition_size = 2, condition = {"water-tile"}}
}

ENTITY {
    type = "tile",
    name = "py-nexelit",
    needs_correction = false,
    minable = {mining_time = 0.1, result = "py-nexelit"},
    mined_sound = {filename = "__base__/sound/deconstruct-bricks.ogg"},
    collision_mask = {"ground-tile"},
    walking_speed_modifier = 3.5,
    decorative_removal_probability = 1,
    layer = 61,
    variants = {
        main = {
            {
                picture = "__pyindustry__/graphics/tiles/py-nexelit/py-nexelit.png",
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
    map_color = {r = 0, g = 110, b = 255, a = 1},
    pollution_absorption_per_second = 0,
    vehicle_friction_modifier = 0.6
}
