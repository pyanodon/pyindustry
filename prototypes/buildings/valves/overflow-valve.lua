RECIPE {
    type = "recipe",
    name = "py-overflow-valve",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "electronic-circuit", amount = 1},
        {type = "item", name = "steel-plate",        amount = 1},
        {type = "item", name = "iron-gear-wheel",    amount = 1},
        {type = "item", name = "pipe",               amount = 1}
    },
    results = {
        {type = "item", name = "py-overflow-valve", amount = 1}
    }
}:add_unlock("fluid-handling")

ITEM {
    type = "item",
    name = "py-overflow-valve",
    icon = "__pyindustrygraphics__/graphics/icons/overflow-valve.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-pipes",
    order = "pipe[niobium]-flow-b",
    place_result = "py-overflow-valve",
    stack_size = 10
}

ENTITY {
    name = "py-overflow-valve",
    type = "valve",
    mode = "overflow",
    flow_rate = 12000 / 60,
    threshold = 0.8,
    minable = {mining_time = 1, result = "py-overflow-valve"},
    icon = "__pyindustrygraphics__/graphics/icons/overflow-valve.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation", "placeable-neutral", "placeable-enemy"},
    corpse = "small-remnants",
    max_health = data.raw["pipe"]["pipe"].max_health,
    resistances = data.raw["pipe"]["pipe"].resistances,
    fast_replaceable_group = data.raw["pipe"]["pipe"].fast_replaceable_group,
    collision_box = data.raw["pipe"]["pipe"].collision_box,
    selection_box = data.raw["pipe"]["pipe"].selection_box,
    window_bounding_box = {{0, 0}, {0, 0}},
    flow_length_in_ticks = data.raw["storage-tank"]["storage-tank"].flow_length_in_ticks,
    two_direction_only = false,
    working_sound = nil,
    fluid_box = {
        volume = 100,
        pipe_covers = _G.pipecoverspictures(),
        pipe_connections = {
            {
                position = {0, 0},
                direction = defines.direction.south,
                flow_direction = "output"
            },
            {
                position = {0, -0},
                direction = defines.direction.north,
                flow_direction = "input-output"
            }
        }
    },
    animations = {
        north = {
            layers = {
                {
                    filename = "__pyindustrygraphics__/graphics/entity/py-valves/overflow-valve.png",
                    priority = "extra-high",
                    width = 64,
                    height = 128,
                    shift = {0.0, -0.5},
                    scale = 0.5,
                    x = 64 * 0
                },
                {
                    filename = "__pyindustrygraphics__/graphics/entity/py-valves/overflow-valve-arrows.png",
                    priority = "extra-high",
                    width = 64,
                    height = 128,
                    shift = {0.0, -0.5},
                    scale = 0.5,
                    x = 64 * 0
                },
                {
                    filename = "__pyindustrygraphics__/graphics/entity/py-valves/overflow-valve-shadow.png",
                    priority = "extra-high",
                    draw_as_shadow = true,
                    width = 96,
                    height = 48,
                    shift = util.by_pixel(12, 0),
                    scale = 0.5,
                    x = 96 * 0
                }
            }
        },
        east = {
            layers = {
                {
                    filename = "__pyindustrygraphics__/graphics/entity/py-valves/overflow-valve.png",
                    priority = "extra-high",
                    width = 64,
                    height = 128,
                    shift = {0.0, -0.5},
                    scale = 0.5,
                    x = 64 * 1
                },
                {
                    filename = "__pyindustrygraphics__/graphics/entity/py-valves/overflow-valve-arrows.png",
                    priority = "extra-high",
                    width = 64,
                    height = 128,
                    shift = {0.0, -0.5},
                    scale = 0.5,
                    x = 64 * 1
                },
                {
                    filename = "__pyindustrygraphics__/graphics/entity/py-valves/overflow-valve-shadow.png",
                    priority = "extra-high",
                    draw_as_shadow = true,
                    width = 96,
                    height = 48,
                    shift = util.by_pixel(12, 0),
                    scale = 0.5,
                    x = 96 * 1
                }
            }
        },
        south = {
            layers = {
                {
                    filename = "__pyindustrygraphics__/graphics/entity/py-valves/overflow-valve.png",
                    priority = "extra-high",
                    width = 64,
                    height = 128,
                    shift = {0.0, -0.5},
                    scale = 0.5,
                    x = 64 * 2
                },
                {
                    filename = "__pyindustrygraphics__/graphics/entity/py-valves/overflow-valve-arrows.png",
                    priority = "extra-high",
                    width = 64,
                    height = 128,
                    shift = {0.0, -0.5},
                    scale = 0.5,
                    x = 64 * 2
                },
                {
                    filename = "__pyindustrygraphics__/graphics/entity/py-valves/overflow-valve-shadow.png",
                    priority = "extra-high",
                    draw_as_shadow = true,
                    width = 96,
                    height = 48,
                    shift = util.by_pixel(12, 0),
                    scale = 0.5,
                    x = 96 * 0
                }
            }
        },
        west = {
            layers = {
                {
                    filename = "__pyindustrygraphics__/graphics/entity/py-valves/overflow-valve.png",
                    priority = "extra-high",
                    width = 64,
                    height = 128,
                    shift = {0.0, -0.5},
                    scale = 0.5,
                    x = 64 * 3
                },
                {
                    filename = "__pyindustrygraphics__/graphics/entity/py-valves/overflow-valve-arrows.png",
                    priority = "extra-high",
                    width = 64,
                    height = 128,
                    shift = {0.0, -0.5},
                    scale = 0.5,
                    x = 64 * 3
                },
                {
                    filename = "__pyindustrygraphics__/graphics/entity/py-valves/overflow-valve-shadow.png",
                    priority = "extra-high",
                    draw_as_shadow = true,
                    width = 96,
                    height = 48,
                    shift = util.by_pixel(12, 0),
                    scale = 0.5,
                    x = 96 * 1
                }
            }
        }
    },
}
