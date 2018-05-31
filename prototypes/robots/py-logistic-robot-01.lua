local cargo_bot =
    RECIPE {
    type = 'recipe',
    name = 'py-logistic-robot-01',
    energy_required = 10,
    category = 'crafting-with-fluid',
    enabled = false,
    ingredients = {
        {'iron-plate', 10},
        {'iron-gear-wheel', 10},
        {'copper-plate', 2},
        {'electronic-circuit', 10},
        {'py-construction-robot-01', 1},
        {type = 'fluid', name = 'lubricant', amount = 300}
    },
    results = {
        {'py-logistic-robot-01', 1}
    }
}
cargo_bot:add_ingredient({type = 'item', name = 'rubber', amount = 10})
cargo_bot:replace_ingredient('iron-plate', 'brass-alloy'):replace_ingredient('iron-gear-wheel', 'steel-bearing'):replace_ingredient('copper-plate', 'chromium')
cargo_bot:add_unlock({'basic-electronics', 'advanced-electronics'})

ITEM {
    type = 'item',
    name = 'py-logistic-robot-01',
    icon = '__pyindustry__/graphics/icons/py-logistic-robot-01.png',
    icon_size = 32,
    flags = {'goes-to-quickbar'},
    subgroup = 'py-robots',
    order = 'c',
    place_result = 'py-logistic-robot-01',
    stack_size = 10
}:subgroup_order('py-hightech-items', 'b')

ENTITY {
    type = 'logistic-robot',
    name = 'py-logistic-robot-01',
    icon = '__pyindustry__/graphics/icons/py-logistic-robot-01.png',
    icon_size = 32,
    flags = {'placeable-player', 'player-creation', 'placeable-off-grid', 'not-on-map'},
    minable = {hardness = 0.1, mining_time = 0.1, result = 'py-logistic-robot-01'},
    resistances = {{type = 'fire', percent = 85}},
    max_health = 100,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    max_payload_size = 3,
    speed = 0.05,
    transfer_distance = 0.5,
    max_energy = '1.5MJ',
    energy_per_tick = '0.05kJ',
    speed_multiplier_when_out_of_energy = 0.2,
    energy_per_move = '5kJ',
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    idle = {
        filename = '__pyindustry__/graphics/entity/py-logistic-robot-01/idle.png',
        priority = 'high',
        line_length = 16,
        width = 64,
        height = 64,
        frame_count = 1,
        shift = util.by_pixel(0, 0),
        direction_count = 16,
        --y = 42,
        hr_version = {
            filename = '__pyindustry__/graphics/entity/py-logistic-robot-01/hr-idle.png',
            priority = 'high',
            line_length = 16,
            width = 128,
            height = 128,
            frame_count = 1,
            shift = util.by_pixel(0, 0),
            direction_count = 16,
            --y = 84,
            scale = 0.5
        }
    },
    idle_with_cargo = {
        filename = '__pyindustry__/graphics/entity/py-logistic-robot-01/idle-cargo.png',
        priority = 'high',
        line_length = 16,
        width = 64,
        height = 64,
        frame_count = 1,
        shift = util.by_pixel(0, 0),
        direction_count = 16,
        hr_version = {
            filename = '__pyindustry__/graphics/entity/py-logistic-robot-01/hr-idle-cargo.png',
            priority = 'high',
            line_length = 16,
            width = 128,
            height = 128,
            frame_count = 1,
            shift = util.by_pixel(0, 0),
            direction_count = 16,
            scale = 0.5
        }
    },
    in_motion = {
        filename = '__pyindustry__/graphics/entity/py-logistic-robot-01/run.png',
        priority = 'high',
        line_length = 16,
        width = 64,
        height = 64,
        frame_count = 1,
        shift = util.by_pixel(0, 0),
        direction_count = 16,
        hr_version = {
            filename = '__pyindustry__/graphics/entity/py-logistic-robot-01/hr-run.png',
            priority = 'high',
            line_length = 16,
            width = 128,
            height = 128,
            frame_count = 1,
            shift = util.by_pixel(0, 0),
            direction_count = 16,
            scale = 0.5
        }
    },
    in_motion_with_cargo = {
        filename = '__pyindustry__/graphics/entity/py-logistic-robot-01/run-cargo.png',
        priority = 'high',
        line_length = 16,
        width = 64,
        height = 64,
        frame_count = 1,
        shift = util.by_pixel(0, 0),
        direction_count = 16,
        hr_version = {
            filename = '__pyindustry__/graphics/entity/py-logistic-robot-01/hr-run-cargo.png',
            priority = 'high',
            line_length = 16,
            width = 128,
            height = 128,
            frame_count = 1,
            shift = util.by_pixel(0, 0),
            direction_count = 16,
            scale = 0.5
        }
    },
    shadow_idle = {
        filename = '__pyindustry__/graphics/entity/py-logistic-robot-01/shadow.png',
        priority = 'high',
        line_length = 16,
        width = 64,
        height = 48,
        frame_count = 1,
        shift = util.by_pixel(33.5, 18.75),
        draw_as_shadow = true,
        direction_count = 16,
        hr_version = {
            filename = '__pyindustry__/graphics/entity/py-logistic-robot-01/hr-shadow.png',
            priority = 'high',
            line_length = 16,
            width = 128,
            height = 96,
            frame_count = 1,
            shift = util.by_pixel(33.5, 18.75),
            draw_as_shadow = true,
            direction_count = 16,
            scale = 0.5
        }
    },
    shadow_idle_with_cargo = {
        filename = '__pyindustry__/graphics/entity/py-logistic-robot-01/shadow-cargo.png',
        priority = 'high',
        line_length = 16,
        width = 64,
        height = 48,
        frame_count = 1,
        shift = util.by_pixel(33.5, 18.75),
        draw_as_shadow = true,
        direction_count = 16,
        hr_version = {
            filename = '__pyindustry__/graphics/entity/py-logistic-robot-01/hr-shadow-cargo.png',
            priority = 'high',
            line_length = 16,
            width = 128,
            height = 96,
            frame_count = 1,
            shift = util.by_pixel(33.5, 18.75),
            draw_as_shadow = true,
            direction_count = 16,
            scale = 0.5
        }
    },
    shadow_in_motion = {
        filename = '__pyindustry__/graphics/entity/py-logistic-robot-01/shadow.png',
        priority = 'high',
        line_length = 16,
        width = 64,
        height = 48,
        frame_count = 1,
        shift = util.by_pixel(33.5, 18.75),
        draw_as_shadow = true,
        direction_count = 16,
        hr_version = {
            filename = '__pyindustry__/graphics/entity/py-logistic-robot-01/hr-shadow.png',
            priority = 'high',
            line_length = 16,
            width = 128,
            height = 96,
            frame_count = 1,
            shift = util.by_pixel(33.5, 18.75),
            draw_as_shadow = true,
            direction_count = 16,
            scale = 0.5
        }
    },
    shadow_in_motion_with_cargo = {
        filename = '__pyindustry__/graphics/entity/py-logistic-robot-01/shadow-cargo.png',
        priority = 'high',
        line_length = 16,
        width = 64,
        height = 48,
        frame_count = 1,
        shift = util.by_pixel(33.5, 18.75),
        draw_as_shadow = true,
        direction_count = 16,
        hr_version = {
            filename = '__pyindustry__/graphics/entity/py-logistic-robot-01/hr-shadow-cargo.png',
            priority = 'high',
            line_length = 16,
            width = 128,
            height = 96,
            frame_count = 1,
            shift = util.by_pixel(33.5, 18.75),
            draw_as_shadow = true,
            direction_count = 16,
            scale = 0.5
        }
    },
    working_sound = _G.flying_robot_sounds(),
    cargo_centered = {0.0, 0.2}
}
