RECIPE {
    type = "recipe",
    name = "py-sinkhole",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"offshore-pump", 5},
        {"iron-plate", 40},
        {"pipe", 20},
        {"steel-plate", 15},
        {"stone-brick", 50}
    },
    results = {
        {"py-sinkhole", 1}
    }
}:add_unlock("steel-processing")

ITEM {
    type = "item",
    name = "py-sinkhole",
    icon = "__pyindustry__/graphics/icons/py-sinkhole.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-industry",
    order = "a",
    place_result = "py-sinkhole",
    stack_size = 10
}

ENTITY {
    type = "furnace",
    name = "py-sinkhole",
    icon = "__pyindustry__/graphics/icons/py-sinkhole.png",
    icon_size = 64,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "py-sinkhole"},
    max_health = 400,
    corpse = "medium-remnants",
    repair_sound = {filename = "__base__/sound/manual-repair-simple.ogg"},
    mined_sound = {filename = "__base__/sound/deconstruct-bricks.ogg"},
    open_sound = {filename = "__base__/sound/machine-open.ogg", volume = 0.85},
    close_sound = {filename = "__base__/sound/machine-close.ogg", volume = 0.75},
    vehicle_impact_sound = {filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0},
    source_inventory_size = 0,
    result_inventory_size = 0,
    module_specification = {
        module_slots = 0
    },
    allowed_effects = {},
    working_sound = {
        sound = {filename = "__pyindustry__/sounds/py-sinkhole.ogg", volume = 0.8},
        idle_sound = {filename = "__pyindustry__/sounds/py-sinkhole.ogg", volume = 0.3},
        apparent_volume = 2.0
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
    crafting_categories = {"py-runoff"},
    energy_usage = "1kW",
    crafting_speed = 2,
    energy_source = {
        type = 'void'
    },
    animation = _G.make_4way_animation_from_spritesheet {
        layers = {
            {
                filename = "__pyindustry__/graphics/entity/py-sinkhole/py-sinkhole.png",
                priority = "extra-high",
                width = 96,
                height = 96,
                frame_count = 1,
                shift = {0.0, -0.0},
                hr_version = {
                    filename = "__pyindustry__/graphics/entity/py-sinkhole/hr-py-sinkhole.png",
                    priority = "extra-high",
                    width = 192,
                    height = 192,
                    frame_count = 1,
                    shift = {0.0, -0.0},
                    scale = 0.5
                }
            },
            {
                filename = "__pyindustry__/graphics/entity/py-sinkhole/shadow.png",
                priority = "extra-high",
                width = 98.5,
                height = 96,
                frame_count = 1,
                draw_as_shadow = true,
                shift = {0.3, -0.0},
                hr_version = {
                    filename = "__pyindustry__/graphics/entity/py-sinkhole/hr-shadow.png",
                    priority = "extra-high",
                    width = 197,
                    height = 192,
                    frame_count = 1,
                    draw_as_shadow = true,
                    shift = {0.3, -0.0},
                    scale = 0.5
                }
            }
        }
    },
    fluid_boxes = {
        {
            production_type = "input",
            pipe_picture = ENTITY.Pipes.pictures("assembling-machine-3", nil, nil, nil, nil),
            pipe_covers = ENTITY.Pipes.covers(true, true, true, true),
            base_area = 1000,
            base_level = -1,
            pipe_connections = {{type = "input", position = {2.0, 0.0}}}
        },
        off_when_no_fluid_recipe = false
    },
    fast_replaceable_group = "py-sinkhole"
}
