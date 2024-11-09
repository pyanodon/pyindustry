RECIPE {
    type = "recipe",
    name = "py-local-radar",
    ingredients = {
        {type = "item", name = "electronic-circuit", amount = 5},
        {type = "item", name = "iron-gear-wheel",    amount = 5},
        {type = "item", name = "iron-plate",         amount = 10},
        {type = "item", name = "wood",               amount = 20},
        {type = "item", name = "engine-unit",        amount = 1}
    },
    results = {
        {type = "item", name = "py-local-radar", amount = 1}
    },
    enabled = false
}:add_unlock("radars-mk01")

ITEM {
    type = "item",
    name = "py-local-radar",
    icon = "__pyindustry__/graphics/icons/radar.png",
    icon_size = 64,
    flags = {},
    subgroup = "defensive-structure",
    order = "d[radar]-a[radar]",
    place_result = "py-local-radar",
    stack_size = 10
}

ENTITY {
    type = "radar",
    name = "py-local-radar",
    icon = "__pyindustry__/graphics/icons/radar.png",
    icon_size = 64,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.1, result = "py-local-radar"},
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
    impact_category = "metal-large",
    working_sound = table.deepcopy(data.raw.radar.radar.working_sound),
    radius_minimap_visualisation_color = {r = 0.059, g = 0.092, b = 0.235, a = 0.275},
    rotation_speed = 0.005
}
