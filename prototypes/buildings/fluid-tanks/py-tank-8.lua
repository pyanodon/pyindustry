RECIPE {
    type = "recipe",
    name = "py-tank-8",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {type = "item", name = "py-tank-4", amount = 1},
        {type = "item", name = "pipe",         amount = 12},
        {type = "item", name = "iron-stick",   amount = 35},
        {type = "item", name = "steel-plate",  amount = 45}
    },
    results = {
        {type = "item", name = "py-tank-8", amount = 1}
    }
}:add_unlock("py-storage-tanks")

ITEM {
    type = "item",
    name = "py-tank-8",
    icon = "__pyindustrygraphics__/graphics/icons/py-tank-8.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-storage-tanks",
    order = "a-h[py-items]",
    place_result = "py-tank-8",
    stack_size = 10
}

ENTITY {
    type = "storage-tank",
    name = "py-tank-8",
    icon = "__pyindustrygraphics__/graphics/icons/py-tank-8.png",
    icon_size = 64,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 3, result = "py-tank-8"},
    max_health = 500,
    corpse = "medium-remnants",
    collision_box = {{-2.9, -2.9}, {2.9, 2.9}},
    selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
    two_direction_only = true,
    fluid_box = {
        volume = 125000,
        pipe_covers = _G.pipecoverspictures(),
        pipe_connections = {
            {
                position = {0.5, -2.5}, --0.5, -3.5
                direction = defines.direction.north
            },
            {
                position = {-0.5, -2.5},
                direction = defines.direction.north
            },
            {
                position = {2.5, 0.5},
                direction = defines.direction.east
            },
            {
                position = {2.5, -0.5},
                direction = defines.direction.east
            },
            {
                position = {0.5, 2.5},
                direction = defines.direction.south
            },
            {
                position = {-0.5, 2.5},
                direction = defines.direction.south
            },
            {
                position = {-2.5, 0.5}, -- west goes a wee bit further
                direction = defines.direction.west
            },
            {
                position = {-2.5, -0.5},
                direction = defines.direction.west
            }
        }
    },
    window_bounding_box = {{-0.0, 0.0}, {0.0, 0.0}},
    pictures = {
        picture = {
            sheet = {
                filename = "__pyindustrygraphics__/graphics/entity/py-tank-8/py-tank-8.png",
                priority = "extra-high",
                frames = 1,
                width = 231,
                height = 257,
                shift = {0.55, -0.55}
            }
        },
        fluid_background = py.empty_image(),
        window_background = py.empty_image(),
        flow_sprite = py.empty_image(),
        gas_flow = py.empty_image()
    },
    flow_length_in_ticks = 360,
    impact_category = "metal-large",
    working_sound = {
        sound = {
            filename = "__base__/sound/storage-tank.ogg",
            volume = 0.8
        },
        apparent_volume = 1.5,
        max_sounds_per_prototype = 3
    },
    circuit_wire_max_distance = 9,
    circuit_connector = table.deepcopy(data.raw["storage-tank"]["storage-tank"].circuit_connector),
}
