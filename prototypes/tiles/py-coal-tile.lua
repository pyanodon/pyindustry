RECIPE {
    type = 'recipe',
    name = 'py-coal-tile',
    category = 'crafting',
    enabled = false,
    ingredients = {
        {type = 'item', name = 'coal', amount = 2}, --ash, 2
        {type = 'item', name = 'wood', amount = 4} --tailings-dust, 10,
    },
    results = {
        {'py-coal-tile', 1}
    },
    requester_paste_multiplier = 4,
    energy_required = 3
}:add_unlock('py-asphalt'):replace_ingredient('coal', 'ash'):replace_ingredient('wood', 'tailings-dust')

if mods.pypetroleumhandling then
    RECIPE('py-coal-tile'):add_ingredient{type = 'fluid', name = 'medium-distillate', amount = 15}
    data.raw.recipe['py-coal-tile'].category = 'reformer'
    data.raw.recipe['py-coal-tile'].results = {{'py-coal-tile', 2}}
end

ITEM {
    type = 'item',
    name = 'py-coal-tile',
    icon = '__base__/graphics/terrain/lab-tiles/lab-dark-1.png',
    icon_size = 1,
    flags = {},
    subgroup = 'py-tiles',
    order = 'za',
    stack_size = 1000,
    place_as_tile = {result = 'lab-dark-1', condition_size = 1, condition = {'water-tile'}}
}

data.raw.tile['lab-dark-1'].minable = {mining_time = 0.1, result = 'py-coal-tile'}
data.raw.tile['lab-dark-1'].mined_sound = {filename = '__base__/sound/deconstruct-bricks.ogg'}
data.raw.tile['lab-dark-1'].walking_speed_modifier = 3.25
data.raw.tile['lab-dark-1'].decorative_removal_probability = 1
data.raw.tile['lab-dark-1'].layer = 101
data.raw.tile['lab-dark-1'].walking_sound = table.deepcopy(data.raw.tile['grass-1'].walking_sound)
data.raw.tile['lab-dark-1'].collision_mask = {'ground-tile'}
data.raw.tile['lab-dark-1'].vehicle_friction_modifier = 0.6
data.raw.tile['lab-dark-1'].tint = {0.2,0.2,0.2}

local old = data.raw.tile['lab-dark-1'].variants.main
add_material_background(data.raw.tile['lab-dark-1'])
data.raw.tile['lab-dark-1'].variants.material_background = nil
data.raw.tile['lab-dark-1'].variants.main = old