RECIPE {
    type = "recipe",
    name = "megadar",
    ingredients = {
        {"advanced-circuit", 20},
        {"iron-gear-wheel", 40},
        {"steel-plate", 20},
        {"engine-unit", 3}
    },
    results = {
        {"megadar", 1}
    },
    enabled = false
}:add_unlock("advanced-electronics")

if mods['pycoalprocessing'] then
    RECIPE("megadar"):remove_unlock("advanced-electronics"):add_unlock("railway-mk02"):replace_ingredient("steel-plate", "nexelit-plate"):add_ingredient({"niobium-plate", 10})
end

ITEM {
    type = "item",
    name = "megadar",
    icon = "__pyindustry__/graphics/icons/megadar.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-industry",
    order = "d[radar]-a[megadar]",
    place_result = "megadar",
    stack_size = 50
}

ENTITY {
    type = "radar",
    name = "megadar",
    icon = "__pyindustry__/graphics/icons/megadar.png",
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
        filename = "__pyindustry__/graphics/entity/radar/radar-integration.png",
        priority = "low",
        width = 119,
        height = 108,
        apply_projection = false,
        direction_count = 1,
        repeat_count = 32,
        line_length = 1,
        shift = util.by_pixel(1.5, 4),
        hr_version = {
            filename = "__pyindustry__/graphics/entity/radar/hr-radar-integration.png",
            priority = "low",
            width = 238,
            height = 216,
            apply_projection = false,
            direction_count = 1,
            repeat_count = 32,
            line_length = 1,
            shift = util.by_pixel(1.5, 4),
            scale = 0.5
        }
    },
    pictures = {
        layers = {
            {
                    filename = "__pyindustry__/graphics/entity/megadar/left.png",
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
                filename = "__pyindustry__/graphics/entity/megadar/mid.png",
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
            filename = "__pyindustry__/graphics/entity/megadar/right.png",
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
                    filename = "__pyindustry__/graphics/entity/megadar/left-sh.png",
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
            filename = "__pyindustry__/graphics/entity/megadar/right-sh.png",
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
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {
            {
                filename = "__pyindustry__/sounds/megadar.ogg",
                volume = 1.9
            }
        },
        apparent_volume = 2
    },
    radius_minimap_visualisation_color = {r = 0.059, g = 0.092, b = 0.235, a = 0.275},
    rotation_speed = 0.0008
}
