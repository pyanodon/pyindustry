RECIPE {
    type = 'recipe',
    name = 'py-asphalt',
    category = 'crafting-with-fluid',
    enabled = false,
    ingredients = {
        {type = 'fluid', name = 'water', amount = 10},
        {type = 'item', name = 'coal', amount = 3},
        {type = 'item', name = 'stone', amount = 5}
    },
    results = {
        {'py-asphalt', 1}
    },
    requester_paste_multiplier = 4,
    energy_required = 3
}:add_unlock('py-asphalt'):replace_ingredient('water', 'tar'):replace_ingredient('coal', 'ash'):replace_ingredient('stone', 'gravel')

ITEM {
    type = 'item',
    name = 'py-asphalt',
    icon = '__base__/graphics/terrain/lab-tiles/lab-dark-2.png',
    icon_size = 1,
    flags = {},
    subgroup = 'py-tiles',
    order = 'zb',
    stack_size = 1000,
    default_request_amount = 150,
    place_as_tile = {result = 'py-asphalt', condition_size = 1, condition = {'water-tile'}}
}

TILE {
    type = "tile",
    name = "py-asphalt",
    needs_correction = false,
    minable = {mining_time = 0.1, result = "py-asphalt"},
    mined_sound = {filename = "__base__/sound/deconstruct-bricks.ogg"},
    collision_mask = {"ground-tile"},
    walking_speed_modifier = 3.25,
    decorative_removal_probability = 1,
    layer = 100,
    variants = {
        main = data.raw.tile['lab-dark-2'].variants.main ,
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
    walking_sound = table.deepcopy(data.raw.tile['grass-1'].walking_sound),
    map_color = {r = 0, g = 0, b = 0, a = 1},
    pollution_absorption_per_second = 0,
    vehicle_friction_modifier = 0.6,
    tint = {0.4,0.4,0.4}
}
