RECIPE {
    type = "recipe",
    name = "py-tank-7000",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {type = "item", name = "storage-tank", amount = 1},
        {type = "item", name = "iron-plate",   amount = 20},
        {type = "item", name = "pipe",         amount = 10},
        {type = "item", name = "steel-plate",  amount = 10}
    },
    results = {
        {type = "item", name = "py-tank-7000", amount = 1}
    }
}:add_unlock("py-storage-tanks")

ITEM {
    type = "item",
    name = "py-tank-7000",
    icon = "__pyindustry__/graphics/icons/py-tank-7000.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-storage-tanks",
    order = "a-c[py-items]",
    place_result = "py-tank-7000",
    stack_size = 10
}

ENTITY {
    type = "storage-tank",
    name = "py-tank-7000",
    icon = "__pyindustry__/graphics/icons/py-tank-7000.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 3, result = "py-tank-7000"},
    max_health = 100,
    corpse = "medium-remnants",
    collision_box = {{-1.3, -3.3}, {1.3, 3.3}},
    selection_box = {{-1.5, -3.5}, {1.5, 3.5}},
    fluid_box = {
        volume = 70000,
        pipe_covers = _G.pipecoverspictures(),
        pipe_connections = {
            {
                position = {-0.9, -3.0}, --1/4, 4
                direction = defines.direction.north
            },
            {
                position = {0.9, -3.0},
                direction = defines.direction.north
            }
        }
    },
    window_bounding_box = {{-0.0, 0.0}, {0.0, 0.0}},
    pictures = {
        picture = {
            north = {
                filename = "__pyindustry__/graphics/entity/py-tank-7000/hr-north.png",
                width = 253,
                height = 585,
                shift = {0.5, -1.0},
                scale = 0.5
            },
            east = {
                filename = "__pyindustry__/graphics/entity/py-tank-7000/hr-east.png",
                width = 499,
                height = 299,
                shift = {0.35, -0.15},
                scale = 0.5
            },
            south = {
                filename = "__pyindustry__/graphics/entity/py-tank-7000/hr-south.png",
                width = 239,
                height = 477,
                shift = {0.34, -0.0},
                scale = 0.5
            },
            west = {
                filename = "__pyindustry__/graphics/entity/py-tank-7000/hr-west.png",
                width = 499,
                height = 299,
                shift = {0.35, -0.15},
                scale = 0.5
            }
        },
        fluid_background = py.empty_image(),
        window_background = py.empty_image(),
        flow_sprite = py.empty_image(),
        gas_flow = py.empty_image()
    },
    flow_length_in_ticks = 450,
    impact_category = "metal-large",
    working_sound = {
        sound = {
            filename = "__base__/sound/storage-tank.ogg",
            volume = 0.8
        },
        apparent_volume = 1.5,
        max_sounds_per_type = 3
    },
    circuit_wire_max_distance = 9,
    circuit_wire_connection_points = _G.circuit_connector_definitions["storage-tank"].points,
    circuit_connector_sprites = _G.circuit_connector_definitions["storage-tank"].sprites
}
