local Recipe = require("stdlib/data/recipe")

local recipe = Recipe {
    type = "recipe",
    name = "py-burner",
    energy_required = 10,
    enabled = false,
    ingredients = {
        {"burner", 5},
        {"iron-plate", 20},
        {"steel-plate", 20},
        {"steel-furnace", 1}
    },
    result = "py-burner"
}:add_unlock("py-burner")

local item = {
    type = "item",
    name = "py-burner",
    icon = "__pyindustry__/graphics/icons/burner.png",
    flags = {"goes-to-quickbar"},
    subgroup = "py-industry",
    order = "a",
    place_result = "py-burner",
    stack_size = 50
}

local entity =
    {
    type = "furnace",
    name = "py-burner",
    icon = "__pyindustry__/graphics/icons/burner.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "py-burner"},
    max_health = 200,
    corpse = "medium-remnants",
    repair_sound = {filename = "__base__/sound/manual-repair-simple.ogg"},
    mined_sound = {filename = "__base__/sound/deconstruct-bricks.ogg"},
    open_sound = {filename = "__base__/sound/machine-open.ogg", volume = 0.85},
    close_sound = {filename = "__base__/sound/machine-close.ogg", volume = 0.75},
    vehicle_impact_sound = {filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0},
    working_sound = {
        sound = {filename = "__base__/sound/furnace.ogg"}
    },
    resistances = {
        {
            type = "fire",
            percent = 90
        },
        {
            type = "explosion",
            percent = 30
        },
        {
            type = "impact",
            percent = 30
        }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    crafting_categories = {"smelting"},
    result_inventory_size = 1,
    energy_usage = "180kW",
    crafting_speed = 1,
    source_inventory_size = 1,
    energy_source = {
        type = "burner",
        fuel_category = "chemical",
        effectivity = 1,
        fuel_inventory_size = 1,
        emissions = 0.01,
        smoke = {
            {
                name = "smoke",
                deviation = {0.1, 0.1},
                frequency = 10 / 32,
                position = {0.0, -2.8},
                starting_vertical_speed = 0.08,
                starting_frame_deviation = 60
            }
        }
    },
    animation = {
        layers = {
            {
                filename = "__pyindustry__/graphics/entity/py-burner/off.png",
                priority = "extra-high",
                width = 96,
                height = 192,
                frame_count = 1,
                shift = {0.0, -3.0}
            },
            {
                filename = "__pyindustry__/graphics/entity/py-burner/shadow.png",
                priority = "extra-high",
                width = 113,
                height = 105,
                frame_count = 1,
                draw_as_shadow = true,
                shift = {0.1, 0.0}
            }
        }
    },
    working_visualisations = {
        {
            north_position = {0.0, -3.0},
            east_position = {0.0, -3.0},
            south_position = {0.0, -3.0},
            west_position = {0.0, -3.0},
            animation = {
                filename = "__pyindustry__/graphics/entity/py-burner/on.png",
                priority = "extra-high",
                line_length = 5,
                width = 96,
                height = 96,
                frame_count = 30,
                animation_speed = 0.5,
                --axially_symmetrical = false,
                --direction_count = 1,
                shift = {0, -3}
            },
            light = {intensity = 1, size = 1, color = {r = 1.0, g = 1.0, b = 1.0}}
        }
    },
    fast_replaceable_group = "py-burner"
}
data:extend {recipe, item, entity}