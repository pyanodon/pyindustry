RECIPE {
    type = 'recipe',
    name = 'py-roboport-mk01',
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {'steel-plate', 20},
        {'iron-plate', 15},
        {'iron-gear-wheel', 20},
        {'electronic-circuit', 5}
    },
    results = {
        {'py-roboport-mk01', 1}
    }
}:add_unlock('construction-robotics')

ITEM {
    type = 'item',
    name = 'py-roboport-mk01',
    icon = '__pyindustry__/graphics/icons/py-roboport-mk01.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-robots',
    order = 'a',
    place_result = 'py-roboport-mk01',
    stack_size = 10
}:subgroup_order('py-hightech-buildings', 'b')

ENTITY {
    type = 'roboport',
    name = 'py-roboport-mk01',
    icon = '__pyindustry__/graphics/icons/py-roboport-mk01.png',
    icon_size = 64,
    flags = {'placeable-player', 'player-creation'},
    minable = {mining_time = 0.1, result = 'py-roboport-mk01'},
    max_health = 500,
    corpse = 'big-remnants',
    collision_box = {{-1.3, -1.3}, {1.3, 1.3}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    resistances = {
        {
            type = 'fire',
            percent = 60
        },
        {
            type = 'impact',
            percent = 30
        }
    },
    dying_explosion = 'medium-explosion',
    energy_source = {
        type = 'electric',
        usage_priority = 'secondary-input',
        input_flow_limit = '5MW',
        buffer_capacity = '300MJ'
    },
    recharge_minimum = '60MJ',
    energy_usage = '50kW',
    -- per one charge slot
    charging_energy = '4000kW',
    logistics_radius = 30,
    construction_radius = 40,
    charge_approach_distance = 5,
    robot_slots_count = 4,
    material_slots_count = 4,
    stationing_offset = util.by_pixel(0, -3),
    charging_offsets = {
        {-0, -0.5}
    },
    base = {
        layers = {
            {
                filename = '__pyindustry__/graphics/entity/py-roboport-mk01/roboport.png',
                width = 96,
                height = 112,
                shift = util.by_pixel(0, 0),
                hr_version = {
                    filename = '__pyindustry__/graphics/entity/py-roboport-mk01/hr-roboport.png',
                    width = 192,
                    height = 224,
                    shift = util.by_pixel(0, 0),
                    scale = 0.5
                }
            },
            {
                filename = '__pyindustry__/graphics/entity/py-roboport-mk01/shadow.png',
                width = 96,
                height = 80,
                draw_as_shadow = true,
                shift = util.by_pixel(8, 15),
                hr_version = {
                    filename = '__pyindustry__/graphics/entity/py-roboport-mk01/hr-shadow.png',
                    width = 192,
                    height = 160,
                    draw_as_shadow = true,
                    shift = util.by_pixel(8, 15),
                    scale = 0.5
                }
            }
        }
    },
    base_patch = {
        filename = '__pyindustry__/graphics/entity/py-roboport-mk01/patch.png',
        priority = 'medium',
        width = 64,
        height = 64,
        frame_count = 1,
        shift = util.by_pixel(0, -8),
        hr_version = {
            filename = '__pyindustry__/graphics/entity/py-roboport-mk01/hr-patch.png',
            priority = 'medium',
            width = 128,
            height = 128,
            frame_count = 1,
            shift = util.by_pixel(0, -8),
            scale = 0.5
        }
    },
    base_animation = {
        filename = '__pyindustry__/graphics/entity/py-roboport-mk01/anim.png',
        priority = 'extra-high',
        width = 16,
        height = 16,
        frame_count = 2,
        animation_speed = 0.1,
        shift = util.by_pixel(28, -7),
        hr_version = {
            filename = '__pyindustry__/graphics/entity/py-roboport-mk01/hr-anim.png',
            priority = 'extra-high',
            width = 32,
            height = 32,
            frame_count = 2,
            animation_speed = 0.1,
            shift = util.by_pixel(28, -7),
            scale = 0.5
        }
    },
    door_animation_up = {
        filename = '__pyindustry__/graphics/entity/py-roboport-mk01/door-up.png',
        priority = 'medium',
        width = 64,
        height = 32,
        frame_count = 16,
        shift = util.by_pixel(0, -40),
        hr_version = {
            filename = '__pyindustry__/graphics/entity/py-roboport-mk01/hr-door-up.png',
            priority = 'medium',
            width = 128,
            height = 64,
            frame_count = 16,
            shift = util.by_pixel(0, -40),
            scale = 0.5
        }
    },
    door_animation_down = {
        filename = '__pyindustry__/graphics/entity/py-roboport-mk01/door-down.png',
        priority = 'medium',
        width = 64,
        height = 32,
        frame_count = 16,
        shift = util.by_pixel(0, -24),
        hr_version = {
            filename = '__pyindustry__/graphics/entity/py-roboport-mk01/hr-door-down.png',
            priority = 'medium',
            width = 128,
            height = 64,
            frame_count = 16,
            shift = util.by_pixel(0, -24),
            scale = 0.5
        }
    },
    recharging_animation = {
        filename = '__pyindustry__/graphics/entity/py-roboport-mk01/effect.png',
        priority = 'high',
        width = 128,
        height = 88,
        frame_count = 16,
        shift = util.by_pixel(-1, -21),
        scale = 0.5,
        animation_speed = 0.5
    },
    vehicle_impact_sound = {filename = '__base__/sound/car-metal-impact.ogg', volume = 0.65},
    working_sound = {
        sound = {filename = '__base__/sound/roboport-working.ogg', volume = 0.6},
        max_sounds_per_type = 3,
        audible_distance_modifier = 0.5,
        probability = 1 / (5 * 60) -- average pause between the sound is 5 seconds
    },
    recharging_light = {intensity = 0.4, size = 5, color = {r = 1.0, g = 1.0, b = 1.0}},
    request_to_open_door_timeout = 15,
    spawn_and_station_height = -0.1,
    draw_logistic_radius_visualization = true,
    draw_construction_radius_visualization = true,
    open_door_trigger_effect = {
        {
            type = 'play-sound',
            sound = {filename = '__base__/sound/roboport-door.ogg', volume = 0.4}
        }
    },
    close_door_trigger_effect = {
        {
            type = 'play-sound',
            sound = {filename = '__base__/sound/roboport-door.ogg', volume = 0.4}
        }
    },
    circuit_wire_connection_point = _G.circuit_connector_definitions['roboport'].points,
    circuit_connector_sprites = _G.circuit_connector_definitions['roboport'].sprites,
    circuit_wire_max_distance = _G.default_circuit_wire_max_distance,
    default_available_logistic_output_signal = {type = 'virtual', name = 'signal-X'},
    default_total_logistic_output_signal = {type = 'virtual', name = 'signal-Y'},
    default_available_construction_output_signal = {type = 'virtual', name = 'signal-Z'},
    default_total_construction_output_signal = {type = 'virtual', name = 'signal-T'}
}
