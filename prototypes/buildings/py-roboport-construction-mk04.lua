RECIPE({
    type = "recipe",
    name = "py-ze-mk04",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        { type = "item", name = "py-ze-mk03",            amount = 1 },
        { type = "item", name = "low-density-structure", amount = 10 },
    },
    results = {
        { type = "item", name = "py-ze-mk04", amount = 1 }
    }
}):add_ingredient({ type = "item", name = "nbfe-alloy", amount = 10 }):add_ingredient({ type = "item", name = "kevlar", amount = 30 })

ITEM({
    type = "item",
    name = "py-ze-mk04",
    icon = "__pyindustrygraphics__/graphics/icons/py-ze-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-stations",
    order = "a",
    place_result = "py-ze-mk04",
    stack_size = 10
})

ENTITY({
    type = "roboport",
    name = "py-ze-mk04",
    icon = "__pyindustrygraphics__/graphics/icons/py-ze-mk04.png",
    icon_size = 64,
    flags = { "placeable-player", "player-creation" },
    minable = { mining_time = 0.1, result = "py-ze-mk04" },
    max_health = 500,
    corpse = "big-remnants",
    collision_box = { { -2.3, -2.3 }, { 2.3, 2.3 } },
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
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
    energy_usage = "600kW",
    -- per one charge slot
    charging_energy = "5MW",
    logistics_radius = 0,
    construction_radius = 120,
    logistics_connection_distance = 120,
    charge_approach_distance = 5,
    robot_slots_count = 0,
    material_slots_count = 0,
    robots_shrink_when_entering_and_exiting = true,
    stationing_offset = util.by_pixel(0, -3),
    charging_offsets = {
        { -0, -0.5 }
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
                filename = "__pyindustrygraphics__/graphics/entity/py-zone-extender-mk04/r.png",
                priority = "extra-high",
                width = 160,
                height = 256,
                line_length = 10,
                frame_count = 30,
                animation_speed = 0.2,
                shift = util.by_pixel(0, -48),
            },
            {
                filename = "__pyindustrygraphics__/graphics/entity/py-zone-extender-mk04/ao.png",
                priority = "extra-high",
                width = 224,
                height = 288,
                line_length = 10,
                frame_count = 30,
                animation_speed = 0.2,
                shift = util.by_pixel(0, -32),
            },
            {
                filename = "__pyindustrygraphics__/graphics/entity/py-zone-extender-mk04/l.png",
                priority = "extra-high",
                width = 160,
                height = 256,
                line_length = 10,
                frame_count = 30,
                draw_as_glow = true,
                animation_speed = 0.2,
                shift = util.by_pixel(0, -48),
            },
            {
                filename = "__pyindustrygraphics__/graphics/entity/py-zone-extender-mk04/sh.png",
                priority = "extra-high",
                width = 192,
                height = 128,
                line_length = 10,
                frame_count = 30,
                draw_as_shadow = true,
                animation_speed = 0.2,
                shift = util.by_pixel(16, 16),
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
        sound = { filename = "__base__/sound/roboport-working.ogg", volume = 0.6, audible_distance_modifier = 0.5, },
        max_sounds_per_prototype = 3,
        probability = 1 / (5 * 60) -- average pause between the sound is 5 seconds
    },
    recharging_light = { intensity = 0.4, size = 5, color = { r = 1.0, g = 1.0, b = 1.0 } },
    request_to_open_door_timeout = 15,
    spawn_and_station_height = -0.1,
    draw_logistic_radius_visualization = true,
    draw_construction_radius_visualization = true,
    open_door_trigger_effect = {
        {
            type = "play-sound",
            sound = { filename = "__base__/sound/roboport-door.ogg", volume = 0.4 }
        }
    },
    close_door_trigger_effect = {
        {
            type = "play-sound",
            sound = { filename = "__base__/sound/roboport-door.ogg", volume = 0.4 }
        }
    },
    circuit_connector = {
        sprites = _G.circuit_connector_definitions["roboport"].sprites,
        points = _G.circuit_connector_definitions["roboport"].points
    },
    circuit_wire_max_distance = _G.default_circuit_wire_max_distance,
    default_available_logistic_output_signal = { type = "virtual", name = "signal-X" },
    default_total_logistic_output_signal = { type = "virtual", name = "signal-Y" },
    default_available_construction_output_signal = { type = "virtual", name = "signal-Z" },
    default_total_construction_output_signal = { type = "virtual", name = "signal-T" }
})
