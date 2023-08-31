local refined_properties = {
    walking_speed_modifier = 3.5,
    vehicle_friction_modifier = 0.6,
    decorative_removal_probability = 1.0
}

local colors = {
  { name = 'red'    , player_color = { r = 0.815, g = 0.024, b = 0.0  , a = 0.5 }, chat_color = { r = 1.000, g = 0.266, b = 0.241 }, dye = {type = 'fluid', name = 'blood', amount = 15} },
  { name = 'green'  , player_color = { r = 0.093, g = 0.768, b = 0.172, a = 0.5 }, chat_color = { r = 0.173, g = 0.824, b = 0.250 }, dye = {type = 'item', name = 'guar', amount = 1} },
  { name = 'blue'   , player_color = { r = 0.155, g = 0.540, b = 0.898, a = 0.5 }, chat_color = { r = 0.343, g = 0.683, b = 1.000 }, dye = {type = 'item', name = 'moondrop', amount = 1} },
  { name = 'orange' , player_color = { r = 0.869, g = 0.5  , b = 0.130, a = 0.5 }, chat_color = { r = 1.000, g = 0.630, b = 0.259 }, dye = {type = 'item', name = 'fawogae-substrate', amount = 1} },
  { name = 'yellow' , player_color = { r = 0.835, g = 0.666, b = 0.077, a = 0.5 }, chat_color = { r = 1.000, g = 0.828, b = 0.231 }, dye = {type = 'item', name = 'ralesias', amount = 1} },
  { name = 'pink'   , player_color = { r = 0.929, g = 0.386, b = 0.514, a = 0.5 }, chat_color = { r = 1.000, g = 0.720, b = 0.833 }, dye = {type = 'item', name = 'ti-rejects', amount = 1} },
  { name = 'purple' , player_color = { r = 0.485, g = 0.111, b = 0.659, a = 0.5 }, chat_color = { r = 0.821, g = 0.440, b = 0.998 }, dye = {type = 'fluid', name = 'vpulp3', amount = 5} },
  { name = 'black'  , player_color = { r = 0.1  , g = 0.1  , b = 0.1,   a = 0.5 }, chat_color = { r = 0.5  , g = 0.5  , b = 0.5   }, dye = {type = 'item', name = 'carbon-black', amount = 1} },
  { name = 'brown'  , player_color = { r = 0.300, g = 0.117, b = 0.0,   a = 0.5 }, chat_color = { r = 0.757, g = 0.522, b = 0.371 }, dye = {type = 'item', name = 'used-comb', amount = 1} },
  { name = 'cyan'   , player_color = { r = 0.275, g = 0.755, b = 0.712, a = 0.5 }, chat_color = { r = 0.335, g = 0.918, b = 0.866 }, dye = {type = 'fluid', name = 'cyanic-acid', amount = 10} },
  { name = 'acid'   , player_color = { r = 0.559, g = 0.761, b = 0.157, a = 0.5 }, chat_color = { r = 0.708, g = 0.996, b = 0.134 }, dye = {type = 'fluid', name = 'acetic-acid', amount = 10} }
}

for i, color_data in pairs(colors) do
    local name = color_data.name .. '-refined-concrete'
    DATA(name, 'tile'):set_fields(refined_properties)

    RECIPE {
        type = 'recipe',
        name = name,
        category = 'mixer',
        enabled = false,
        ingredients = {
            {type = 'item', name = 'refined-concrete', amount = 2},
            color_data.dye
        },
        results = {
            {name, 3}
        },
        requester_paste_multiplier = 4,
        energy_required = 1
    }:add_unlock('py-asphalt-mk03')
    
    ITEM {
        type = 'item',
        name = name,
        icons = {
            {
                icon = data.raw.item['refined-concrete'].icon,
                tint = color_data.chat_color,
                icon_size = 64,
                icon_mipmaps = 4
            }
        },
        flags = {},
        subgroup = 'py-tiles-2',
        order = '' .. i,
        stack_size = 1000,
        place_as_tile = {result = name, condition_size = 1, condition = {'water-tile'}},
        localised_name = data.raw.tile[name].localised_name
    }

    data.raw.tile[name].minable = {mining_time = 0.1, result = name}
    data.raw.tile[name].mined_sound = {filename = '__base__/sound/deconstruct-bricks.ogg'}
    data.raw.tile[name].collision_mask = {'ground-tile'}
end
DATA('refined-concrete', 'tile'):set_fields(refined_properties)