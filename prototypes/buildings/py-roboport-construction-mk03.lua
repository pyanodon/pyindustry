RECIPE {
    type = "recipe",
    name = "py-ze-mk03",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "py-ze-mk02",      amount = 1},
        {type = "item", name = "processing-unit", amount = 15},
        {type = "item", name = "iron-gear-wheel", amount = 200},
        {type = "item", name = "plastic-bar",     amount = 10},
    },
    results = {
        {type = "item", name = "py-ze-mk03", amount = 1}
    }
}:add_unlock("py-accumulator-mk03"):add_ingredient {type = "item", name = "niobium-plate", amount = 10}:add_ingredient {type = "item", name = "nexelit-plate", amount = 20}

ITEM {
    type = "item",
    name = "py-ze-mk03",
    icon = "__pyindustrygraphics__/graphics/icons/py-ze-mk03.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-stations",
    order = "a",
    place_result = "py-ze-mk03",
    stack_size = 10
}

ENTITY {
    type = "roboport",
    name = "py-ze-mk03",
    icon = "__pyindustrygraphics__/graphics/icons/py-ze-mk03.png",
    icon_size = 64,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.1, result = "py-ze-mk03"},
    max_health = 500,
    corpse = "big-remnants",
    collision_box = {{-1.9, -1.9}, {1.9, 1.9}},
    selection_box = {{-2.0, -2.0}, {2.0, 2.0}},
    resistances = {
        {
            type = "fire",
            percent = 60
        },
        {
            type = "impact",
            percent = 30
        }
    },
    dying_explosion = "medium-explosion",
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        input_flow_limit = "5MW",
        buffer_capacity = "300MJ"
    },
    recharge_minimum = "60MJ",
    energy_usage = "400kW",
    -- per one charge slot
    charging_energy = "4MW",
    logistics_radius = 0,
    construction_radius = 100,
    logistics_connection_distance = 100,
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
                filename = "__pyindustrygraphics__/graphics/icons/filler.png",
                width = 4,
                height = 4,
                shift = util.by_pixel(0, -0),
            },
        }
    },
    base_patch = {
        layers = {
            {
                filename = "__pyindustrygraphics__/graphics/icons/filler.png",
                width = 4,
                height = 4,
                shift = util.by_pixel(0, -0),
            },
        }
    },
    base_animation = {
        layers = {
            {
                filename = "__pyindustrygraphics__/graphics/entity/py-zone-extender-mk03/r.png",
                priority = "extra-high",
                width = 320,
                height = 288,
                line_length = 7,
                frame_count = 50,
                animation_speed = 1 / 3.9,
                shift = util.by_pixel(0, -80),
            },
            {
                filename = "__pyindustrygraphics__/graphics/entity/py-zone-extender-mk03/ao.png",
                priority = "extra-high",
                width = 320,
                height = 320,
                line_length = 7,
                frame_count = 50,
                animation_speed = 1 / 3.9,
                shift = util.by_pixel(0, -64),
            },
            {
                filename = "__pyindustrygraphics__/graphics/entity/py-zone-extender-mk03/l.png",
                priority = "extra-high",
                width = 320,
                height = 288,
                line_length = 7,
                frame_count = 50,
                draw_as_glow = true,
                animation_speed = 1 / 3.9,
                shift = util.by_pixel(0, -80),
            },
            {
                filename = "__pyindustrygraphics__/graphics/entity/py-zone-extender-mk03/sh.png",
                priority = "extra-high",
                width = 320,
                height = 224,
                line_length = 7,
                frame_count = 50,
                draw_as_shadow = true,
                animation_speed = 1 / 3.9,
                shift = util.by_pixel(40, 16),
            },
        }

    },
    door_animation_up = {
        layers = {
            {
                filename = "__pyindustrygraphics__/graphics/icons/filler.png",
                width = 4,
                height = 4,
                shift = util.by_pixel(0, -0),
            },
        }
    },
    door_animation_down = {
        layers = {
            {
                filename = "__pyindustrygraphics__/graphics/icons/filler.png",
                width = 4,
                height = 4,
                shift = util.by_pixel(0, -0),
            },
        }
    },
    recharging_animation = {
        filename = "__pyindustrygraphics__/graphics/entity/py-roboport-mk01/effect.png",
        priority = "high",
        width = 128,
        height = 88,
        frame_count = 16,
        shift = util.by_pixel(-1, -21),
        scale = 0.5,
        animation_speed = 0.5
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__base__/sound/roboport-working.ogg", volume = 0.6, audible_distance_modifier = 0.5,},
        max_sounds_per_prototype = 3,
        probability = 1 / (5 * 60) -- average pause between the sound is 5 seconds
    },
    recharging_light = {intensity = 0.4, size = 5, color = {r = 1.0, g = 1.0, b = 1.0}},
    request_to_open_door_timeout = 15,
    spawn_and_station_height = -0.1,
    draw_logistic_radius_visualization = true,
    draw_construction_radius_visualization = true,
    open_door_trigger_effect = {
        {
            type = "play-sound",
            sound = {filename = "__base__/sound/roboport-door.ogg", volume = 0.4}
        }
    },
    close_door_trigger_effect = {
        {
            type = "play-sound",
            sound = {filename = "__base__/sound/roboport-door.ogg", volume = 0.4}
        }
    },
    circuit_connector = {
        sprites = _G.circuit_connector_definitions["roboport"].sprites,
        points = _G.circuit_connector_definitions["roboport"].points
    },
    circuit_wire_max_distance = _G.default_circuit_wire_max_distance,
    default_available_logistic_output_signal = {type = "virtual", name = "signal-X"},
    default_total_logistic_output_signal = {type = "virtual", name = "signal-Y"},
    default_available_construction_output_signal = {type = "virtual", name = "signal-Z"},
    default_total_construction_output_signal = {type = "virtual", name = "signal-T"}
}
