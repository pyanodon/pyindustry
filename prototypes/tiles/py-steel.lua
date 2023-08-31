if mods.pyrawores and mods.pypetroleumhandling then
    RECIPE {
        type = 'recipe',
        name = 'py-steel',
        category = 'casting',
        enabled = false,
        ingredients = {
            {type = 'fluid', name = 'molten-steel', amount = 10},
            {type = 'fluid', name = 'hot-air', amount = 5},
            {type = 'item', name = 'small-parts-01', amount = 1}
        },
        results = {
            {'py-steel', 2}
        },
        requester_paste_multiplier = 4,
        energy_required = 3
    }:add_unlock('py-asphalt-mk02')
else
    RECIPE {
        type = 'recipe',
        name = 'py-steel',
        category = 'crafting',
        enabled = false,
        ingredients = {
            {type = 'item', name = 'steel-plate', amount = 2},
            {type = 'item', name = 'iron-stick', amount = 1}
        },
        results = {
            {'py-steel', 1}
        },
        requester_paste_multiplier = 4,
        energy_required = 3
    }:add_unlock('py-asphalt-mk02', 'coal-processing-2')
end

ITEM {
    type = 'item',
    name = 'py-steel',
    icon = '__pyindustry__/graphics/icons/py-steel.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-tiles',
    order = 'a-steel-oxide',
    stack_size = 1000,
    place_as_tile = {result = 'py-steel', condition_size = 1, condition = {'water-tile'}}
}

ENTITY {
    type = 'tile',
    name = 'py-steel',
    needs_correction = false,
    minable = {mining_time = 0.1, result = 'py-steel'},
    mined_sound = {filename = '__base__/sound/deconstruct-bricks.ogg'},
    collision_mask = {'ground-tile'},
    walking_speed_modifier = 3.5,
    decorative_removal_probability = 1,
    layer = 51,
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
    map_color = {r = 0, g = 0, b = 0, a = 1},
    pollution_absorption_per_second = 0,
    vehicle_friction_modifier = 0.6
}

add_material_background(
    data.raw.tile['py-steel'],
    '__pyindustry__/graphics/tiles/py-steel/py-steel.png',
    '__pyindustry__/graphics/tiles/py-steel/hr-py-steel.png',
    1
)