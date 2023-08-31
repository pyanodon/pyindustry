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
    place_as_tile = {result = 'lab-dark-2', condition_size = 1, condition = {'water-tile'}}
}

data.raw.tile['lab-dark-2'].minable = {mining_time = 0.1, result = 'py-asphalt'}
data.raw.tile['lab-dark-2'].mined_sound = {filename = '__base__/sound/deconstruct-bricks.ogg'}
data.raw.tile['lab-dark-2'].walking_speed_modifier = 3.25
data.raw.tile['lab-dark-2'].decorative_removal_probability = 1
data.raw.tile['lab-dark-2'].layer = 100
data.raw.tile['lab-dark-2'].walking_sound = table.deepcopy(data.raw.tile['grass-1'].walking_sound)
data.raw.tile['lab-dark-2'].collision_mask = {'ground-tile'}
data.raw.tile['lab-dark-2'].vehicle_friction_modifier = 0.6
data.raw.tile['lab-dark-2'].tint = {0.4,0.4,0.4}

local old = data.raw.tile['lab-dark-2'].variants.main
add_material_background(data.raw.tile['lab-dark-2'])
data.raw.tile['lab-dark-2'].variants.material_background = nil
data.raw.tile['lab-dark-2'].variants.main = old