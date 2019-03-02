RECIPE {
    type = "recipe",
    name = "py-local-radar",
    ingredients = {
        {"electronic-circuit", 5},
        {"iron-gear-wheel", 5},
        {"iron-plate", 10},
        {"wood", 20},
        {"engine-unit", 1}
    },
    results = {
        {"py-local-radar", 1}
    },
    enabled = true
}

ITEM {
    type = "item",
    name = "py-local-radar",
    icon = "__pyindustry__/graphics/icons/radar.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "py-industry",
    order = "d[radar]-a[radar]",
    place_result = "py-local-radar",
    stack_size = 50
}

ENTITY {
    type = "radar",
    name = "py-local-radar",
    icon = "__pyindustry__/graphics/icons/radar.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "py-local-radar"},
    max_health = 250,
    corpse = "big-remnants",
    resistances = {
        {
            type = "fire",
            percent = 70
        },
        {
            type = "impact",
            percent = 30
        }
    },
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    energy_per_sector = "2MJ",
    max_distance_of_sector_revealed = 3,
    max_distance_of_nearby_sector_revealed = 3,
    energy_per_nearby_scan = "50kJ",
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input"
    },
    energy_usage = "25kW",
    integration_patch = {
        filename = "__pyindustry__/graphics/entity/radar/radar-integration.png",
        priority = "low",
        width = 119,
        height = 108,
        apply_projection = false,
        direction_count = 1,
        repeat_count = 64,
        line_length = 1,
        shift = util.by_pixel(1.5, 4),
        hr_version = {
            filename = "__pyindustry__/graphics/entity/radar/hr-radar-integration.png",
            priority = "low",
            width = 238,
            height = 216,
            apply_projection = false,
            direction_count = 1,
            repeat_count = 64,
            line_length = 1,
            shift = util.by_pixel(1.5, 4),
            scale = 0.5
        }
    },
    pictures = {
        layers = {
            {
                    filename = "__pyindustry__/graphics/entity/radar/hr-radar.png",
                    priority = "low",
                    width = 201,
                    height = 283,
                    apply_projection = false,
                    direction_count = 50,
                    line_length = 10,
                    animation_speed = 0.7,
                    shift = util.by_pixel(1, -16),
                    scale = 0.5
            },
            {
                    filename = "__pyindustry__/graphics/entity/radar/hr-radar-shadow.png",
                    priority = "low",
                    width = 226,
                    height = 192,
                    apply_projection = false,
                    direction_count = 50,
                    line_length = 8,
                    animation_speed = 0.7,
                    shift = util.by_pixel(39.25, 3),
                    draw_as_shadow = true,
                    scale = 0.5
                }
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {
            {
                filename = "__pyindustry__/sounds/radar.ogg",
                volume = 0.5
            }
        },
        apparent_volume = 2
    },
    radius_minimap_visualisation_color = {r = 0.059, g = 0.092, b = 0.235, a = 0.275}
}
