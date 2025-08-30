RECIPE({
    type = "recipe",
    name = "py-check-valve",
    energy_required = 2,
    enabled = false,
    ingredients = {
        { type = "item", name = "steel-plate",     amount = 1 },
        { type = "item", name = "iron-gear-wheel", amount = 1 },
        { type = "item", name = "pipe",            amount = 1 }
    },
    results = {
        { type = "item", name = "py-check-valve", amount = 1 }
    }
}):add_unlock("fluid-handling")

ITEM({
    type = "item",
    name = "py-check-valve",
    icon = "__pyindustrygraphics__/graphics/icons/check-valve.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-pipes",
    order = "pipe[niobium]-flow-a",
    place_result = "py-check-valve",
    stack_size = 10
})

ENTITY({
    name = "py-check-valve",
    type = "storage-tank",
    minable = { mining_time = 1, result = "py-check-valve" },
    icon = "__pyindustrygraphics__/graphics/icons/check-valve.png",
    icon_size = 32,
    flags = { "placeable-player", "player-creation", "placeable-neutral", "placeable-enemy" },
    corpse = "small-remnants",
    max_health = data.raw["pipe"]["pipe"].max_health,
    resistances = data.raw["pipe"]["pipe"].resistances,
    fast_replaceable_group = data.raw["pipe"]["pipe"].fast_replaceable_group,
    collision_box = data.raw["pipe"]["pipe"].collision_box,     --0.29
    selection_box = data.raw["pipe"]["pipe"].selection_box,
    window_bounding_box = { { 0, 0 }, { 0, 0 } },
    flow_length_in_ticks = data.raw["storage-tank"]["storage-tank"].flow_length_in_ticks,
    two_direction_only = false,
    working_sound = nil,
    fluid_box = {
        volume = 100,
        pipe_covers = _G.pipecoverspictures(),
        pipe_connections = {
            {
                position = { 0, 0 },
                direction = defines.direction.south
            },
            {
                position = { 0, -0 },
                direction = defines.direction.north,
                -- flow_direction = "output" --TODO fix valves
            }
        }
    },
    pictures = {
        gas_flow = py.empty_image(),
        fluid_background = py.empty_image(),
        window_background = py.empty_image(),
        flow_sprite = py.empty_image(),
        picture = {
            sheets = {
                {
                    filename = "__pyindustrygraphics__/graphics/entity/py-valves/check-valve.png",
                    priority = "extra-high",
                    frames = 4,
                    width = 64,
                    height = 128,
                    shift = { 0.0, -0.5 },
                    scale = 0.5
                },
                {
                    filename = "__pyindustrygraphics__/graphics/entity/py-valves/check-valve-shadow.png",
                    priority = "extra-high",
                    frames = 4,
                    draw_as_shadow = true,
                    width = 128,
                    height = 70,
                    shift = { 0.5, -0.0 },
                    scale = 0.5
                }
            }
        }
    },
    circuit_connector = circuit_connector_definitions["py-valves"],
    circuit_wire_max_distance = data.raw["storage-tank"]["storage-tank"].circuit_wire_max_distance
})
