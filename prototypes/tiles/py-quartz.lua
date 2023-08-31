RECIPE {
    type = 'recipe',
    name = 'py-quartz',
    category = 'glassworks',
    enabled = false,
    ingredients = {
        {type = 'fluid', name = 'slacked-lime', amount = 10},
        {type = 'item', name = 'powdered-quartz', amount = 4},
        {type = 'item', name = 'pure-sand', amount = 2}
    },
    results = {
        {'py-quartz', 2}
    },
    requester_paste_multiplier = 4,
    energy_required = 3
}:add_unlock('py-asphalt')

ITEM {
    type = 'item',
    name = 'py-quartz',
    icon = '__base__/graphics/terrain/lab-tiles/lab-white.png',
    icon_size = 1,
    flags = {},
    subgroup = 'py-tiles',
    order = 'zc',
    stack_size = 1000,
    default_request_amount = 150,
    place_as_tile = {result = 'lab-white', condition_size = 1, condition = {'water-tile'}}
}

data.raw.tile['lab-white'].minable = {mining_time = 0.1, result = 'py-quartz'}
data.raw.tile['lab-white'].mined_sound = {filename = '__base__/sound/deconstruct-bricks.ogg'}
data.raw.tile['lab-white'].walking_speed_modifier = 3.25
data.raw.tile['lab-white'].decorative_removal_probability = 1
data.raw.tile['lab-white'].layer = 99
data.raw.tile['lab-white'].walking_sound = table.deepcopy(data.raw.tile['grass-1'].walking_sound)
data.raw.tile['lab-white'].collision_mask = {'ground-tile'}
data.raw.tile['lab-white'].vehicle_friction_modifier = 0.6
data.raw.tile['lab-white'].tint = {255,255,255}

local old = data.raw.tile['lab-white'].variants.main
add_material_background(data.raw.tile['lab-white'])
data.raw.tile['lab-white'].variants.material_background = nil
data.raw.tile['lab-white'].variants.main = old