local sounds = require '__base__/prototypes/entity/sounds'

RECIPE {
    type = 'recipe',
    name = 'py-construction-robot-01',
    energy_required = 10,
    category = "crafting-with-fluid",
    enabled = false,
    ingredients = {
        {type = "item", name = 'steel-plate', amount = 20},
        {type = "item", name = 'iron-plate', amount = 15},
        {type = "item", name = 'iron-gear-wheel', amount = 20},
        {type = "item", name = 'steam-engine', amount = 1},
        {type = "item", name = 'electronic-circuit', amount = 5},
    },
    results = {
        {type = "item", name = 'py-construction-robot-01', amount = 1}
    }
}:add_unlock('construction-robotics')

local bot_item = ITEM {
    type = 'item',
    name = 'py-construction-robot-01',
    icon = '__pyindustry__/graphics/icons/py-construction-robot-01.png',
    icon_size = 32,
    flags = {},
    subgroup = 'py-robots',
    order = 'b',
    place_result = 'py-construction-robot-01',
    stack_size = 50
}

if data.raw['item-subgroup']["py-hightech-items"] then
    bot_item:subgroup_order("py-hightech-items", "b")
end

ENTITY {
    type = 'construction-robot',
    name = 'py-construction-robot-01',
    icon = '__pyindustry__/graphics/icons/py-construction-robot-01.png',
    icon_size = 32,
    flags = {'placeable-player', 'player-creation', 'placeable-off-grid', 'not-on-map'},
    minable = {mining_time = 0.1, result = 'py-construction-robot-01'},
    resistances = {{type = 'fire', percent = 85}},
    max_health = 20,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    max_payload_size = 1,
    speed = 0.08,
    transfer_distance = 0.5,
    max_energy = '1.5MJ',
    energy_per_tick = '0.05kJ',
    speed_multiplier_when_out_of_energy = 0.4,
    energy_per_move = '4kJ',
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    working_light = {intensity = 0.8, size = 3, color = {r = 0.8, g = 0.8, b = 0.8}},
    idle = {
        filename = '__pyindustry__/graphics/entity/py-construction-robot-01/hr-cr-01.png',
        priority = 'high',
        line_length = 16,
        width = 64,
        height = 73,
        frame_count = 1,
        shift = util.by_pixel(0, -4.5),
        direction_count = 16,
        scale = 0.5
    },
    in_motion = {
        filename = '__pyindustry__/graphics/entity/py-construction-robot-01/hr-cr-01.png',
        priority = 'high',
        line_length = 16,
        width = 64,
        height = 73,
        frame_count = 1,
        shift = util.by_pixel(0, -4.5),
        direction_count = 16,
        y = 73,
        scale = 0.5
    },
    shadow_idle = {
        filename = '__pyindustry__/graphics/entity/py-construction-robot-01/hr-shadow.png',
        priority = 'high',
        line_length = 16,
        width = 64,
        height = 73,
        frame_count = 1,
        shift = util.by_pixel(33.5, 18.75),
        direction_count = 16,
        scale = 0.5
    },
    shadow_in_motion = {
        filename = '__pyindustry__/graphics/entity/py-construction-robot-01/hr-shadow.png',
        priority = 'high',
        line_length = 16,
        width = 64,
        height = 73,
        frame_count = 1,
        shift = util.by_pixel(33.5, 18.75),
        direction_count = 16,
        scale = 0.5
    },
    working = {
        filename = '__pyindustry__/graphics/entity/py-construction-robot-01/hr-cr-01-working.png',
        priority = 'high',
        line_length = 2,
        width = 64,
        height = 73,
        frame_count = 2,
        shift = util.by_pixel(0, -4.5),
        direction_count = 16,
        animation_speed = 0.3,
        scale = 0.5
    },
    shadow_working = {
        stripes = util.multiplystripes(
            2,
            {
                {
                    filename = '__pyindustry__/graphics/entity/py-construction-robot-01/shadow.png',
                    width_in_frames = 16,
                    height_in_frames = 1
                }
            }
        ),
        priority = 'high',
        width = 32,
        height = 37,
        frame_count = 2,
        shift = {1.09375, 0.59375},
        direction_count = 16
    },
    smoke = {
        filename = '__base__/graphics/entity/smoke-construction/smoke-01.png',
        width = 39,
        height = 32,
        frame_count = 19,
        line_length = 19,
        shift = {0.078125, -0.15625},
        animation_speed = 0.3
    },
    sparks = {
        {
            filename = '__base__/graphics/entity/sparks/sparks-01.png',
            width = 39,
            height = 34,
            frame_count = 19,
            line_length = 19,
            shift = {-0.109375, 0.3125},
            tint = {r = 1.0, g = 0.9, b = 0.0, a = 1.0},
            animation_speed = 0.3
        },
        {
            filename = '__base__/graphics/entity/sparks/sparks-02.png',
            width = 36,
            height = 32,
            frame_count = 19,
            line_length = 19,
            shift = {0.03125, 0.125},
            tint = {r = 1.0, g = 0.9, b = 0.0, a = 1.0},
            animation_speed = 0.3
        },
        {
            filename = '__base__/graphics/entity/sparks/sparks-03.png',
            width = 42,
            height = 29,
            frame_count = 19,
            line_length = 19,
            shift = {-0.0625, 0.203125},
            tint = {r = 1.0, g = 0.9, b = 0.0, a = 1.0},
            animation_speed = 0.3
        },
        {
            filename = '__base__/graphics/entity/sparks/sparks-04.png',
            width = 40,
            height = 35,
            frame_count = 19,
            line_length = 19,
            shift = {-0.0625, 0.234375},
            tint = {r = 1.0, g = 0.9, b = 0.0, a = 1.0},
            animation_speed = 0.3
        },
        {
            filename = '__base__/graphics/entity/sparks/sparks-05.png',
            width = 39,
            height = 29,
            frame_count = 19,
            line_length = 19,
            shift = {-0.109375, 0.171875},
            tint = {r = 1.0, g = 0.9, b = 0.0, a = 1.0},
            animation_speed = 0.3
        },
        {
            filename = '__base__/graphics/entity/sparks/sparks-06.png',
            width = 44,
            height = 36,
            frame_count = 19,
            line_length = 19,
            shift = {0.03125, 0.3125},
            tint = {r = 1.0, g = 0.9, b = 0.0, a = 1.0},
            animation_speed = 0.3
        }
    },
    working_sound = sounds.construction_robot(0.5),
    cargo_centered = {0.0, 0.2},
    construction_vector = {0.30, 0.22}
}
