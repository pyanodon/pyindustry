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
            {type = "item", name = 'py-steel', amount = 2}
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
    place_as_tile = {result = 'py-steel', condition_size = 1, condition = {layers = {water_tile = true}}}
}

TILE {
    type = 'tile',
    name = 'py-steel',
    needs_correction = false,
    minable = {mining_time = 0.1, result = 'py-steel'},
    mined_sound = {filename = '__base__/sound/deconstruct-bricks.ogg'},
    collision_mask = {layers = {ground_tile = true}},
    walking_speed_modifier = 3.5,
    decorative_removal_probability = 1,
    layer = 7,
    layer_group = "ground-artificial",
    walking_sound = {
        {
            filename = '__pyindustry__/sounds/iron-foot-01.ogg',
            volume = 0.3,
            speed = 1.2
        },
        {
            filename = '__pyindustry__/sounds/iron-foot-02.ogg',
            volume = 0.3,
            speed = 1.2
        },
        {
            filename = '__pyindustry__/sounds/iron-foot-03.ogg',
            volume = 0.3,
            speed = 1.2
        },
        {
            filename = '__pyindustry__/sounds/iron-foot-04.ogg',
            volume = 0.3,
            speed = 1.2
        }
    },
    map_color = {r = 0, g = 0, b = 0, a = 1},
    absorptions_per_second = {pollution = 0},
    vehicle_friction_modifier = 0.6,
    variants = {
        transition = table.deepcopy(TILE('concrete').variants.transition),
        material_background =
        {
          picture = '__pyindustry__/graphics/tiles/py-steel/hr-py-steel.png',
          count = 1,
          scale = 0.5
        }
    }
}