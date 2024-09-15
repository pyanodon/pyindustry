RECIPE {
    type = "recipe",
    name = "py-gas-vent",
    energy_required = 0.5,
    enabled = true,
    ingredients = {
        {"iron-plate", 20},
        {"pipe", 15},
        {"stone-brick", 5}
    },
    results = {
        {"py-gas-vent", 1}
    }
}

ITEM {
    type = "item",
    name = "py-gas-vent",
    icon = "__pyindustry__/graphics/icons/py-gas-vent.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-void",
    order = "a",
    place_result = "py-gas-vent",
    stack_size = 10
}

ENTITY {
    type = "furnace",
    name = "py-gas-vent",
    icon = "__pyindustry__/graphics/icons/py-gas-vent.png",
    icon_size = 64,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "py-gas-vent"},
    source_inventory_size = 0,
    result_inventory_size = 0,
    max_health = 400,
    corpse = "medium-remnants",
    repair_sound = {filename = "__base__/sound/manual-repair-simple.ogg"},
    mined_sound = {filename = "__base__/sound/deconstruct-bricks.ogg"},
    open_sound = {filename = "__base__/sound/machine-open.ogg", volume = 0.85},
    close_sound = {filename = "__base__/sound/machine-close.ogg", volume = 0.75},
    vehicle_impact_sound = {filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0},
    module_specification = {
        module_slots = 0
    },
    allowed_effects = {},
    working_sound = {
        sound = {filename = "__base__/sound/idle1.ogg", volume = 0.7},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.3},
        apparent_volume = 1.0
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
    collision_box = {{-0.2, -0.2}, {0.2, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    crafting_categories = {"py-venting"},
    energy_usage = "25kW",
    crafting_speed = 2,
    energy_source = {type = 'void'},
    animation = _G.make_4way_animation_from_spritesheet {
        layers = {
            {
                filename = "__pyindustry__/graphics/entity/py-gas-vent/py-gas-vent.png",
                priority = "extra-high",
                width = 32,
                height = 176,
                frame_count = 1,
                shift = util.by_pixel(0, -72),
                hr_version = {
                    filename = "__pyindustry__/graphics/entity/py-gas-vent/hr-py-gas-vent.png",
                    priority = "extra-high",
                    width = 64,
                    height = 352,
                    frame_count = 1,
                    shift = util.by_pixel(0, -72),
                    scale = 0.5
                }
            },
            {
                filename = "__pyindustry__/graphics/entity/py-gas-vent/shadow.png",
                priority = "extra-high",
                width = 75,
                height = 23,
                frame_count = 1,
                draw_as_shadow = true,
                shift = {1.3, -0.0},
                hr_version = {
                    filename = "__pyindustry__/graphics/entity/py-gas-vent/hr-shadow.png",
                    priority = "extra-high",
                    width = 150,
                    height = 46,
                    frame_count = 1,
                    draw_as_shadow = true,
                    shift = {1.3, -0.0},
                    scale = 0.5
                }
            }
        }
    },
    fluid_boxes = {
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, nil, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            volume = 100000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {0.2, 0.0}, direction = defines.direction.east}}
        },
        off_when_no_fluid_recipe = false
    },
    fast_replaceable_group = "py-gas-vent"
}
