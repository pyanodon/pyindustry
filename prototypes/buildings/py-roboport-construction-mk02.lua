RECIPE {
    type = 'recipe',
    name = 'py-ze-mk02',
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {'py-ze', 1},
        {'steel-plate', 30},
        {'plastic-bar', 15},
        {'iron-gear-wheel', 100},
        {'advanced-circuit', 10}
    },
    results = {
        {'py-ze-mk02', 1}
    }
}:add_unlock('py-accumulator-mk02')

ITEM {
    type = 'item',
    name = 'py-ze-mk02',
    icon = '__pyindustry__/graphics/icons/py-ze-mk02.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-stations',
    order = 'a',
    place_result = 'py-ze-mk02',
    stack_size = 10
}

ENTITY {
    type = 'roboport',
    name = 'py-ze-mk02',
    icon = '__pyindustry__/graphics/icons/py-ze-mk02.png',
    icon_size = 64,
    flags = {'placeable-player', 'player-creation', "not-rotatable"},
    minable = {mining_time = 0.1, result = 'py-ze-mk02'},
    max_health = 500,
    corpse = 'big-remnants',
    collision_box = {{-1.9, -1.4}, {1.9, 1.4}},
    selection_box = {{-2.0, -1.5}, {2.0, 1.5}},
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
    energy_usage = '200kW',
    -- per one charge slot
    charging_energy = '400kW',
    logistics_radius = 0,
    construction_radius = 60,
    logistics_connection_distance = 60,
    charge_approach_distance = 5,
    robot_slots_count = 0,
    material_slots_count = 0,
    robots_shrink_when_entering_and_exiting = true,
    stationing_offset = util.by_pixel(0, -3),
    charging_offsets = {
        {-0, -0.5}
    },
    base = {
        layers = {
            {
                filename = '__pyindustry__/graphics/icons/filler.png',
                width = 4,
                height = 4,
                shift = util.by_pixel(0, -0),
                hr_version = {
                    filename = '__pyindustry__/graphics/icons/filler.png',
                    width = 4,
                    height = 4,
                    shift = util.by_pixel(0, -0),
                }
            },
        }
    },
    base_patch = {
        layers = {
            {
                filename = '__pyindustry__/graphics/icons/filler.png',
                width = 4,
                height = 4,
                shift = util.by_pixel(0, -0),
                hr_version = {
                    filename = '__pyindustry__/graphics/icons/filler.png',
                    width = 4,
                    height = 4,
                    shift = util.by_pixel(0, -0),
                }
            },
        }
    },
    base_animation = {
        layers = {
            {
                filename = '__pyindustry__/graphics/entity/py-zone-extender-mk02/r.png',
                priority = 'extra-high',
                width = 192,
                height = 320,
                line_length = 10,
                frame_count = 70,
                animation_speed = 1/3,
                shift = util.by_pixel(0, -80),
            },
            {
                filename = '__pyindustry__/graphics/entity/py-zone-extender-mk02/ao.png',
                priority = 'extra-high',
                width = 192,
                height = 320,
                line_length = 10,
                frame_count = 70,
                animation_speed = 1/3,
                shift = util.by_pixel(0, -80),
            },
            {
                filename = '__pyindustry__/graphics/entity/py-zone-extender-mk02/sh.png',
                priority = 'extra-high',
                width = 192,
                height = 160,
                line_length = 10,
                frame_count = 70,
                draw_as_shadow = true,
                animation_speed = 1/3,
                shift = util.by_pixel(32, 0),
            },
        }

    },
    door_animation_up = {
        layers = {
            {
                filename = '__pyindustry__/graphics/icons/filler.png',
                width = 4,
                height = 4,
                shift = util.by_pixel(0, -0),
                hr_version = {
                    filename = '__pyindustry__/graphics/icons/filler.png',
                    width = 4,
                    height = 4,
                    shift = util.by_pixel(0, -0),
                }
            },
        }
    },
    door_animation_down = {
        layers = {
            {
                filename = '__pyindustry__/graphics/icons/filler.png',
                width = 4,
                height = 4,
                shift = util.by_pixel(0, -0),
                hr_version = {
                    filename = '__pyindustry__/graphics/icons/filler.png',
                    width = 4,
                    height = 4,
                    shift = util.by_pixel(0, -0),
                }
            },
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
