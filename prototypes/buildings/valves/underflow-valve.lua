RECIPE({
    type = "recipe",
    name = "py-underflow-valve",
    energy_required = 2,
    enabled = false,
    ingredients = {
        { type = "item", name = "electronic-circuit", amount = 1 },
        { type = "item", name = "steel-plate",        amount = 1 },
        { type = "item", name = "iron-gear-wheel",    amount = 1 },
        { type = "item", name = "pipe",               amount = 1 }
    },
    results = {
        { type = "item", name = "py-underflow-valve", amount = 1 }
    }
}):add_unlock("fluid-handling")

ITEM({
    type = "item",
    name = "py-underflow-valve",
    icon = "__pyindustrygraphics__/graphics/icons/underflow-valve.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-pipes",
    order = "pipe[niobium]-flow-c",
    place_result = "py-underflow-valve",
    stack_size = 10
})

ENTITY({
    name = "py-underflow-valve",
    type = "valve",
    mode = "top-up",
    flow_rate = 6000 / 60,
    threshold = 0.8,
    minable = { mining_time = 1, result = "py-underflow-valve" },
    icon = "__pyindustrygraphics__/graphics/icons/underflow-valve.png",
    icon_size = 32,
    flags = { "placeable-player", "player-creation", "placeable-neutral", "placeable-enemy" },
    corpse = "small-remnants",
    max_health = data.raw[ "pipe" ][ "pipe" ].max_health,
    resistances = data.raw[ "pipe" ][ "pipe" ].resistances,
    fast_replaceable_group = data.raw[ "pipe" ][ "pipe" ].fast_replaceable_group,
    collision_box = data.raw[ "pipe" ][ "pipe" ].collision_box,
    selection_box = data.raw[ "pipe" ][ "pipe" ].selection_box,
    window_bounding_box = { { 0, 0 }, { 0, 0 } },
    flow_length_in_ticks = data.raw[ "storage-tank" ][ "storage-tank" ].flow_length_in_ticks,
    two_direction_only = false,
    working_sound = nil,
    fluid_box = {
        volume = 100,
        pipe_covers = _G.pipecoverspictures(),
        pipe_connections = {
            {
                position = { 0, 0 },
                direction = defines.direction.north,
                flow_direction = "input-output"
            },
            {
                position = { 0, -0 },
                direction = defines.direction.south,
                flow_direction = "output"
            }
        }
    },
    animations = {
        south = {
            layers = {
                {
                    filename = "__pyindustrygraphics__/graphics/entity/py-valves/underflow-valve.png",
                    priority = "extra-high",
                    width = 64,
                    height = 128,
                    shift = util.by_pixel(0, -16),
                    scale = 0.5,
                    x = 64 * 0
                },
                {
                    filename = "__pyindustrygraphics__/graphics/entity/py-valves/underflow-valve-shadow.png",
                    priority = "extra-high",
                    draw_as_shadow = true,
                    width = 90,
                    height = 48,
                    shift = util.by_pixel(14, -0),
                    scale = 0.5,
                    x = 64 * 0
                }
            }
        },
        west = {
            layers = {
                {
                    filename = "__pyindustrygraphics__/graphics/entity/py-valves/underflow-valve.png",
                    priority = "extra-high",
                    width = 64,
                    height = 128,
                    shift = util.by_pixel(0, -16),
                    scale = 0.5,
                    x = 64 * 1
                },
                {
                    filename = "__pyindustrygraphics__/graphics/entity/py-valves/underflow-valve-shadow.png",
                    priority = "extra-high",
                    draw_as_shadow = true,
                    width = 90,
                    height = 48,
                    shift = util.by_pixel(14, -0),
                    scale = 0.5,
                    x = 64 * 1
                }
            }
        },
        north = {
            layers = {
                {
                    filename = "__pyindustrygraphics__/graphics/entity/py-valves/underflow-valve.png",
                    priority = "extra-high",
                    width = 64,
                    height = 128,
                    shift = util.by_pixel(0, -16),
                    scale = 0.5,
                    x = 64 * 2
                },
                {
                    filename = "__pyindustrygraphics__/graphics/entity/py-valves/underflow-valve-shadow.png",
                    priority = "extra-high",
                    draw_as_shadow = true,
                    width = 90,
                    height = 48,
                    shift = util.by_pixel(14, -0),
                    scale = 0.5,
                    x = 64 * 0
                }
            }
        },
        east = {
            layers = {
                {
                    filename = "__pyindustrygraphics__/graphics/entity/py-valves/underflow-valve.png",
                    priority = "extra-high",
                    width = 64,
                    height = 128,
                    shift = util.by_pixel(0, -16),
                    scale = 0.5,
                    x = 64 * 3
                },
                {
                    filename = "__pyindustrygraphics__/graphics/entity/py-valves/underflow-valve-shadow.png",
                    priority = "extra-high",
                    draw_as_shadow = true,
                    width = 90,
                    height = 48,
                    shift = util.by_pixel(14, -0),
                    scale = 0.5,
                    x = 64 * 1
                }
            }
        },
    },
})
