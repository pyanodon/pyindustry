RECIPE {
    type = "recipe",
    name = "accumulator-mk02",
    energy_required = 0.5,
    category = 'crafting-with-fluid',
    enabled = false,
    ingredients = {
        {"battery", 50},
        {"advanced-circuit", 15},
        {"iron-plate", 100}, -- stainless steel
        {"copper-cable", 150}, --tinned cable
        {"steel-plate", 60} -- {"nexelit-plate", 60},
        -- {"optical-fiber", 30},
    },
    results = {
        {"accumulator-mk02", 1}
    }
}:replace_ingredient("steel-plate", "nexelit-plate"):add_ingredient({type = "fluid", name = "liquid-nitrogen", amount = 50}):add_ingredient({"optical-fiber", 30}):add_unlock({"coal-processing-3", "electric-energy-accumulators-1"})

ITEM {
    type = "item",
    name = "accumulator-mk02",
    icon = "__pyindustry__/graphics/icons/accumulator-mk02.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-industry",
    order = "a",
    place_result = "accumulator-mk02",
    stack_size = 50
}

ENTITY {
    type = "accumulator",
    name = "accumulator-mk02",
    icon = "__pyindustry__/graphics/icons/accumulator-mk02.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.1, result = "accumulator-mk02"},
    max_health = 150,
    corpse = "medium-remnants",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    energy_source = {
        type = "electric",
        buffer_capacity = "120MJ",
        usage_priority = "tertiary",
        input_flow_limit = "3000kW",
        output_flow_limit = "3000kW"
    },
    picture = {
        filename = "__pyindustry__/graphics/entity/accumulator-mk02/charged.png",
        priority = "extra-high",
        width = 192,
        height = 288,
        shift = util.by_pixel(16, -64),
    },
    charge_animation = {
        filename = "__pyindustry__/graphics/entity/accumulator-mk02/charging.png",
        width = 192,
        height = 288,
        line_length = 10,
        frame_count = 70,
        shift = util.by_pixel(16, -64),
        animation_speed = 0.3
    },
    charge_cooldown = 30,
    charge_light = {intensity = 0.7, size = 7, color = {r = 0.219, g = 0.835, b = 0.188}},
    discharge_animation = {
        filename = "__pyindustry__/graphics/entity/accumulator-mk02/discharge.png",
        width = 192,
        height = 288,
        line_length = 9,
        frame_count = 36,
        shift = util.by_pixel(16, -64),
        animation_speed = 0.3
    },
    discharge_cooldown = 60,
    discharge_light = {intensity = 0.7, size = 7, color = {r = 0.862, g = 0.117, b = 0.117}},
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {
            filename = "__pyindustry__/sounds/accumulator-mk02.ogg",
            volume = 0.7
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
