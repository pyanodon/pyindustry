RECIPE {
    type = 'recipe',
    name = 'py-iron',
    category = mods.pycoalprocessing and 'evaporator' or 'crafting-with-fluid',
    enabled = false,
    ingredients = {
        {type = 'item', name = 'iron-plate', amount = 4},
        {type = 'item', name = 'iron-stick', amount = 1}
    },
    results = {
        {'py-iron', 2}
    },
    requester_paste_multiplier = 4,
    energy_required = 3
}:add_unlock('py-asphalt-mk02'):add_ingredient{type = 'fluid', name = 'organic-solvent', amount = 5}

ITEM {
    type = 'item',
    name = 'py-iron',
    icon = '__pyindustry__/graphics/icons/py-iron.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-tiles',
    order = 'a-iron-oxide',
    stack_size = 1000,
    place_as_tile = {result = 'py-iron', condition_size = 1, condition = {'water-tile'}}
}

ENTITY {
    type = 'tile',
    name = 'py-iron',
    needs_correction = false,
    minable = {mining_time = 0.1, result = 'py-iron'},
    mined_sound = {filename = '__base__/sound/deconstruct-bricks.ogg'},
    collision_mask = {'ground-tile'},
    walking_speed_modifier = 3.5,
    decorative_removal_probability = 1,
    layer = 52,
    walking_sound = {
        {
            filename = '__pyindustry__/sounds/iron1-01.ogg',
            volume = 0.6
        },
        {
            filename = '__pyindustry__/sounds/iron1-02.ogg',
            volume = 0.6
        },
        {
            filename = '__pyindustry__/sounds/iron1-04.ogg',
            volume = 0.6
        },
        {
            filename = '__pyindustry__/sounds/iron1-03.ogg',
            volume = 0.6
        }
    },
    map_color = {r = 130, g = 130, b = 130, a = 1},
    pollution_absorption_per_second = 0,
    vehicle_friction_modifier = 0.6
}

add_material_background(
    data.raw.tile['py-iron'],
    '__pyindustry__/graphics/tiles/py-limestone/py-limestone.png',
    '__pyindustry__/graphics/tiles/py-limestone/hr-py-limestone.png',
    1
)

data.raw.tile['py-iron'].variants.main = {
    {
        count = 8,
        picture = '__pyindustry__/graphics/tiles/py-iron/py-iron.png',
        size = 1,
        hr_version = {
            count = 8,
            picture = '__pyindustry__/graphics/tiles/py-iron/hr-py-iron.png',
            size = 1,
            scale = 0.5
        }
    }
}
data.raw.tile['py-iron'].variants.material_background = nil