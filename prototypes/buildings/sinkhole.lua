RECIPE {
    type = "recipe",
    name = "py-sinkhole",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "offshore-pump", amount = 5},
        {type = "item", name = "iron-plate",    amount = 40},
        {type = "item", name = "pipe",          amount = 20},
        {type = "item", name = "steel-plate",   amount = 15},
        {type = "item", name = "stone-brick",   amount = 50}
    },
    results = {
        {type = "item", name = "py-sinkhole", amount = 1}
    }
}:add_unlock("steel-processing")

ITEM {
    type = "item",
    name = "py-sinkhole",
    icon = "__pyindustrygraphics__/graphics/icons/py-sinkhole.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-void",
    order = "a",
    place_result = "py-sinkhole",
    stack_size = 10
}

ENTITY {
    type = "furnace",
    name = "py-sinkhole",
    icon = "__pyindustrygraphics__/graphics/icons/py-sinkhole.png",
    icon_size = 64,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "py-sinkhole"},
    max_health = 400,
    corpse = "medium-remnants",
    repair_sound = {filename = "__base__/sound/manual-repair-simple.ogg"},
    mined_sound = {filename = "__base__/sound/deconstruct-bricks.ogg"},
    open_sound = {filename = "__base__/sound/machine-open.ogg", volume = 0.85},
    close_sound = {filename = "__base__/sound/machine-close.ogg", volume = 0.75},
    impact_category = "stone",
    source_inventory_size = 0,
    result_inventory_size = 0,
    module_slots = 0,
    allowed_effects = {},
    working_sound = {
        sound = {filename = "__pyindustrygraphics__/sounds/py-sinkhole.ogg", volume = 0.8},
        idle_sound = {filename = "__pyindustrygraphics__/sounds/py-sinkhole.ogg", volume = 0.3},
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
        type = "void"
    },
    graphics_set = {
        animation = _G.make_4way_animation_from_spritesheet {
            layers = {
                {
                    filename = "__pyindustrygraphics__/graphics/entity/py-sinkhole/py-sinkhole.png",
                    priority = "extra-high",
                    width = 192,
                    height = 192,
                    frame_count = 1,
                    shift = {0.0, -0.0},
                    scale = 0.5
                },
                {
                    filename = "__pyindustrygraphics__/graphics/entity/py-sinkhole/shadow.png",
                    priority = "extra-high",
                    width = 197,
                    height = 192,
                    frame_count = 1,
                    draw_as_shadow = true,
                    shift = {0.3, -0.0},
                    scale = 0.5
                }
            }
        },
    },
    graphics_set_flipped = {
        animation = py.flip_4way_animation(_G.make_4way_animation_from_spritesheet {
            layers = {
                {
                    filename = "__pyindustrygraphics__/graphics/entity/py-sinkhole/py-sinkhole.png",
                    priority = "extra-high",
                    width = 192,
                    height = 192,
                    frame_count = 1,
                    shift = {0.0, -0.0},
                    scale = 0.5
                },
                {
                    filename = "__pyindustrygraphics__/graphics/entity/py-sinkhole/shadow.png",
                    priority = "extra-high",
                    width = 197,
                    height = 192,
                    frame_count = 1,
                    draw_as_shadow = true,
                    shift = {0.3, -0.0},
                    scale = 0.5
                }
            }
        })
    },
    fluid_boxes_off_when_no_fluid_recipe = false,
    fluid_boxes = {
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, nil, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            volume = 100000,
            pipe_connections = {{flow_direction = "input", position = {1.0, 0.0}, direction = defines.direction.east}}
        },
    },
    fast_replaceable_group = "py-sinkhole"
}
