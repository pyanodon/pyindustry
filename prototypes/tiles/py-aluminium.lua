RECIPE {
    type = 'recipe',
    name = 'py-aluminium',
    category = 'crafting',
    enabled = false,
    ingredients = {
        {type = 'item', name = 'copper-plate', amount = 2},
        {type = 'item', name = 'iron-stick', amount = 1}
    },
    results = {
        {'py-aluminium', 1}
    },
    requester_paste_multiplier = 4,
    energy_required = 3
}:add_unlock('py-asphalt-mk02', 'coal-processing-2'):replace_ingredient('iron-stick', 'solder'):replace_ingredient('copper-plate', 'aluminium-plate')

if mods.pyrawores then
    RECIPE('py-aluminium'):add_ingredient{'graphite', 1}
    data.raw.recipe['py-aluminium'].category = 'eaf'
    data.raw.recipe['py-aluminium'].results = {{'py-aluminium', 2}}
end

ITEM {
    type = 'item',
    name = 'py-aluminium',
    icon = '__pyindustry__/graphics/icons/py-aluminium.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-tiles',
    order = 'a-aluminium-oxide',
    stack_size = 1000,
    place_as_tile = {result = 'py-aluminium', condition_size = 1, condition = {'water-tile'}}
}

TILE {
    type = 'tile',
    name = 'py-aluminium',
    needs_correction = false,
    minable = {mining_time = 0.1, result = 'py-aluminium'},
    mined_sound = {filename = '__base__/sound/deconstruct-bricks.ogg'},
    collision_mask = {'ground-tile'},
    walking_speed_modifier = 3.5,
    decorative_removal_probability = 1,
    layer = 78,
    walking_sound = table.deepcopy(data.raw.tile['dry-dirt'].walking_sound),
    map_color = {r = 100, g = 100, b = 100, a = 1},
    pollution_absorption_per_second = 0,
    vehicle_friction_modifier = 0.6
}

add_material_background(
    data.raw.tile['py-aluminium'],
    '__pyindustry__/graphics/tiles/py-aluminium/py-aluminium.png',
    '__pyindustry__/graphics/tiles/py-aluminium/hr-py-aluminium.png',
    4
)