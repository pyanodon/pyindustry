RECIPE {
    type = 'recipe',
    name = 'py-limestone',
    category = mods.pycoalprocessing and 'smelting' or 'crafting-with-fluid',
    enabled = false,
    ingredients = {
        {type = 'fluid', name = 'water', amount = 35},
        {type = 'item', name = 'coal', amount = 3},
        {type = 'item', name = 'stone', amount = 10}
        -- {type='fluid', name='creosote', amount=10},
        -- {type='item', name='ash', amount=3},
        -- {type='item', name='limestone', amount=5},
    },
    results = {
        {type = "item", name = 'py-limestone', amount = 2}
    },
    requester_paste_multiplier = 4,
    energy_required = 3
}:add_unlock('py-asphalt'):replace_ingredient('water', 'creosote'):replace_ingredient('coal', 'ash'):replace_ingredient('stone', 'limestone')

ITEM {
    type = 'item',
    name = 'py-limestone',
    icon = '__pyindustry__/graphics/icons/py-limestone-icon.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-tiles',
    order = 'a-limestone',
    stack_size = 1000,
    default_request_amount = 150,
    place_as_tile = {result = 'py-limestone', condition_size = 1, condition = {layers = {water_tile = true}}}
}

TILE {
    type = 'tile',
    name = 'py-limestone',
    needs_correction = false,
    minable = {mining_time = 0.1, result = 'py-limestone'},
    mined_sound = {filename = '__base__/sound/deconstruct-bricks.ogg'},
    collision_mask = {layers = {ground_tile = true}},
    walking_speed_modifier = 3.5,
    decorative_removal_probability = 1,
    layer = 77,
    walking_sound = {
        {
            filename = '__base__/sound/walking/concrete-1.ogg',
            volume = 0.5
        },
        {
            filename = '__base__/sound/walking/concrete-2.ogg',
            volume = 0.5
        },
        {
            filename = '__base__/sound/walking/concrete-3.ogg',
            volume = 0.5
        },
        {
            filename = '__base__/sound/walking/concrete-4.ogg',
            volume = 0.5
        }
    },
    map_color = {r = 176, g = 175, b = 169, a = 1},
    absorptions_per_second = {pollution = 0},
    vehicle_friction_modifier = 0.75,

    variants = {
        transition = table.deepcopy(TILE('concrete').variants.transition),
        material_background =
        {
          picture = '__pyindustry__/graphics/tiles/py-limestone/hr-py-limestone.png',
          count = 4,
          scale = 0.5
        }
    }
}