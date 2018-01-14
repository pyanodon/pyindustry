Recipe {
    type = "recipe",
    name = "accumulator-mk01",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {"battery", 20},
        {"iron-plate", 40},
        {"copper-plate", 40},
        {"steel-plate", 50} -- {"nexelit-plate", 50},
        -- {"niobium-plate", 10},
    },
    results = {
        {"accumulator-mk01", 1}
    }
}:replace_ingredient("steel-plate", "nexelit-plate"):add_ingredient({"niobium-plate", 10}):add_unlock({"coal-processing-3", "electric-energy-accumulators-1"})

Item {
    type = "item",
    name = "accumulator-mk01",
    icon = "__pyindustry__/graphics/icons/accumulator-mk01.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "py-industry",
    order = "a",
    place_result = "accumulator-mk01",
    stack_size = 50
}

Entity {
    type = "accumulator",
    name = "accumulator-mk01",
    icon = "__pyindustry__/graphics/icons/accumulator-mk01.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "accumulator-mk01"},
    max_health = 150,
    corpse = "medium-remnants",
    collision_box = {{-1.9, -1.9}, {1.9, 1.9}},
    selection_box = {{-2, -2}, {2, 2}},
    energy_source = {
        type = "electric",
        buffer_capacity = "20MJ",
        usage_priority = "terciary",
        input_flow_limit = "1400kW",
        output_flow_limit = "1400kW"
    },
    picture = {
        filename = "__pyindustry__/graphics/entity/accumulator-mk01/accumulator-idle.png",
        priority = "extra-high",
        width = 157,
        height = 244,
        shift = {0.43, -1.781}
    },
    charge_animation = {
        filename = "__pyindustry__/graphics/entity/accumulator-mk01/accumulator-charging.png",
        width = 157,
        height = 244,
        line_length = 10,
        frame_count = 40,
        shift = {0.43, -1.781},
        animation_speed = 0.2
    },
    charge_cooldown = 30,
    charge_light = {intensity = 0.3, size = 7, color = {r = 1.0, g = 1.0, b = 1.0}},
    discharge_animation = {
        filename = "__pyindustry__/graphics/entity/accumulator-mk01/accumulator-discharging.png",
        width = 157,
        height = 244,
        line_length = 10,
        frame_count = 40,
        shift = {0.43, -1.781},
        animation_speed = 0.2
    },
    discharge_cooldown = 60,
    discharge_light = {intensity = 0.7, size = 7, color = {r = 1.0, g = 1.0, b = 1.0}},
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {
            filename = "__pyindustry__/sounds/accumulator.ogg",
            volume = 0.6
        },
        idle_sound = {
            filename = "__base__/sound/accumulator-idle.ogg",
            volume = 0.4
        },
        max_sounds_per_type = 5
    },
    circuit_wire_connection_point = {
        shadow = {
            red = {0.984375, 1.10938},
            green = {0.890625, 1.10938}
        },
        wire = {
            red = {0.6875, 0.59375},
            green = {0.6875, 0.71875}
        }
    },
    circuit_wire_max_distance = 9,
    default_output_signal = {type = "virtual", name = "signal-A"},
    circuit_connector_sprites = _G.circuit_connector_definitions["accumulator"].sprites
}
