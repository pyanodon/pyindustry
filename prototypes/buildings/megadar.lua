TECHNOLOGY {
    type = "technology",
    name = "radars-mk02",
    icon = "__pyindustrygraphics__/graphics/technology/radars-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"radars-mk01"},
    effects = {},
    unit = {
        count = 35,
        ingredients = {
            {"automation-science-pack", 2},
            {"logistic-science-pack",   2},
            {"chemical-science-pack",   2},
        },
        time = 45
    }
}

RECIPE {
    type = "recipe",
    name = "megadar",
    ingredients = {
        {type = "item", name = "advanced-circuit",     amount = 20},
        {type = "item", name = "iron-gear-wheel",      amount = 40},
        {type = "item", name = "steel-plate",          amount = 20},
        {type = "item", name = "electric-engine-unit", amount = 3}
    },
    results = {
        {type = "item", name = "megadar", amount = 1}
    },
    enabled = false
}:add_unlock("radars-mk02")

if mods["pycoalprocessing"] then
    RECIPE("megadar"):replace_ingredient("steel-plate", "nexelit-plate"):add_ingredient {type = "item", name = "niobium-plate", amount = 10}
end

ITEM {
    type = "item",
    name = "megadar",
    icon = "__pyindustrygraphics__/graphics/icons/megadar.png",
    icon_size = 64,
    flags = {},
    subgroup = "defensive-structure",
    order = "d[radar]-a[megadar]",
    place_result = "megadar",
    stack_size = 10
}

ENTITY {
    type = "radar",
    name = "megadar",
    icon = "__pyindustrygraphics__/graphics/icons/megadar.png",
    icon_size = 64,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.1, result = "megadar"},
    max_health = 1000,
    corpse = "big-remnants",
    resistances = {
        {
            type = "fire",
            percent = 90
        },
        {
            type = "impact",
            percent = 40
        }
    },
    collision_box = {{-2.9, -2.9}, {2.9, 2.9}},
    selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
    circuit_connector = {
        sprites = _G.circuit_connector_definitions["roboport"].sprites,
        points = _G.circuit_connector_definitions["roboport"].points
    },
    circuit_wire_max_distance = _G.default_circuit_wire_max_distance,
    energy_per_sector = "12MJ",
    max_distance_of_sector_revealed = 32,
    max_distance_of_nearby_sector_revealed = 8,
    energy_per_nearby_scan = "300kJ",
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input"
    },
    energy_usage = "1200kW",
    integration_patch = {
        filename = "__pyindustrygraphics__/graphics/entity/radar/radar-integration.png",
        priority = "low",
        width = 238,
        height = 216,
        apply_projection = false,
        direction_count = 1,
        repeat_count = 32,
        line_length = 1,
        shift = util.by_pixel(1.5, 4),
        scale = 0.5
    },
    pictures = {
        layers = {
            {
                filename = "__pyindustrygraphics__/graphics/entity/megadar/left.png",
                priority = "low",
                width = 64,
                height = 302,
                apply_projection = false,
                direction_count = 180,
                line_length = 32,
                shift = util.by_pixel(-64, -52),
                --scale = 0.5
            },
            {
                filename = "__pyindustrygraphics__/graphics/entity/megadar/mid.png",
                priority = "low",
                width = 64,
                height = 302,
                apply_projection = false,
                direction_count = 180,
                line_length = 32,
                shift = util.by_pixel(0, -52),
                --scale = 0.5
            },
            {
                filename = "__pyindustrygraphics__/graphics/entity/megadar/right.png",
                priority = "low",
                width = 64,
                height = 302,
                apply_projection = false,
                direction_count = 180,
                line_length = 32,
                shift = util.by_pixel(64, -52),
                --scale = 0.5
            },
            {
                filename = "__pyindustrygraphics__/graphics/entity/megadar/left-sh.png",
                priority = "low",
                width = 128,
                height = 160,
                apply_projection = false,
                direction_count = 180,
                line_length = 16,
                shift = util.by_pixel(-32, 22),
                draw_as_shadow = true,
                --scale = 0.5
            },
            {
                filename = "__pyindustrygraphics__/graphics/entity/megadar/right-sh.png",
                priority = "low",
                width = 128,
                height = 160,
                apply_projection = false,
                direction_count = 180,
                line_length = 16,
                shift = util.by_pixel(96, 22),
                draw_as_shadow = true,
                --scale = 0.5
            }
        }
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {
            {
                filename = "__pyindustrygraphics__/sounds/megadar.ogg",
                volume = 1.9
            }
        },
        apparent_volume = 2
    },
    radius_minimap_visualisation_color = {r = 0.059, g = 0.092, b = 0.235, a = 0.275},
    rotation_speed = 0.0008
}
