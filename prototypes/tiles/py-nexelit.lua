RECIPE {
    type = 'recipe',
    name = 'py-nexelit',
    category = mods.pyhightech and 'pcb' or 'hpf',
    enabled = false,
    ingredients = {
        {type = 'item', name = 'nexelit-plate', amount = 1},
        mods.pyhightech and {type = 'item', name = 'resistor1', amount = 1} or {type = 'item', name = 'gravel', amount = 2},
        {type = 'fluid', name = 'tar', amount = 20}
    },
    results = {
        {'py-nexelit', 2}
    },
    requester_paste_multiplier = 4,
    energy_required = 3
}:add_unlock('py-asphalt-mk02', 'nexelit-mk02')

ITEM {
    type = 'item',
    name = 'py-nexelit',
    icon = '__pyindustry__/graphics/icons/py-nexelit.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-tiles',
    order = 'a-nexelit',
    stack_size = 1000,
    place_as_tile = {result = 'py-nexelit', condition_size = 1, condition = {layers = {water_tile = true}}}
}

TILE {
    type = 'tile',
    name = 'py-nexelit',
    needs_correction = false,
    minable = {mining_time = 0.1, result = 'py-nexelit'},
    mined_sound = {filename = '__base__/sound/deconstruct-bricks.ogg'},
    collision_mask = {layers = {ground_tile = true}},
    walking_speed_modifier = 3.5,
    decorative_removal_probability = 1,
    layer = 75,
    walking_sound = table.deepcopy(data.raw.tile['grass-1'].walking_sound),
    map_color = {r = 0, g = 110, b = 255, a = 1},
    absorptions_per_second = {pollution = 0},
    vehicle_friction_modifier = 0.6,
    variants = {
        transition = table.deepcopy(TILE('concrete').variants.transition),
        material_background =
        {
          picture = '__pyindustry__/graphics/tiles/py-nexelit/hr-py-nexelit.png',
          count = 2,
          scale = 0.5
        }
    }
}