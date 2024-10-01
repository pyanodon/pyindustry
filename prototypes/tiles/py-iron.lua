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
        {type = "item", name = 'py-iron', amount = 2}
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
    place_as_tile = {result = 'py-iron', condition_size = 1, condition = {layers = {water_tile = true}}}
}

local variants = {}
for i=1, 8 do
    
end

TILE {
    type = 'tile',
    name = 'py-iron',
    needs_correction = false,
    minable = {mining_time = 0.1, result = 'py-iron'},
    mined_sound = {filename = '__base__/sound/deconstruct-bricks.ogg'},
    collision_mask = {layers = {ground_tile = true}},
    walking_speed_modifier = 3.5,
    decorative_removal_probability = 1,
    layer = 72,
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
    map_color = {r = 130, g = 130, b = 130, a = 1},
    absorptions_per_second = {pollution = 0},
    vehicle_friction_modifier = 0.6,
    --TODO: fix low quality?
    variants = {
        transition = table.deepcopy(TILE('concrete').variants.transition),
        -- why do we do this instead of the tile_background used elsewhere?
        main =
        {{
          picture = '__pyindustry__/graphics/tiles/py-iron/hr-py-iron.png',
          count = 8,
          scale = 0.5,
          size = 1,
          y = 0,
          line_length = 8
        }}
    }
}