RECIPE {
    type = "recipe",
    name = "py-tank-7000",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {"storage-tank", 1},
        {"iron-plate", 20},
        {"pipe", 10},
        {"steel-plate", 10}
    },
    results = {
        {"py-tank-7000", 1}
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
    minable = {hardness = 0.2, mining_time = 3, result = "py-tank-7000"},
    max_health = 100,
    corpse = "medium-remnants",
    collision_box = {{-1.3, -3.3}, {1.3, 3.3}},
    selection_box = {{-1.5, -3.5}, {1.5, 3.5}},
    fluid_box = {
        base_area = 700,
        pipe_covers = _G.pipecoverspictures(),
        pipe_connections = {
            {position = {-1.0, -4.0}},
            {position = {1.0, -4.0}}
        }
    },
    window_bounding_box = {{-0.0, 0.0}, {0.0, 0.0}},
    pictures = {
        picture = {
            north = {
                filename = "__pyindustry__/graphics/entity/py-tank-7000/north.png",
                width = 127,
                height = 293,
                shift = {0.5, -1},
                hr_version = {
                    filename = "__pyindustry__/graphics/entity/py-tank-7000/hr-north.png",
                    width = 253,
                    height = 585,
                    shift = {0.5, -1.0},
                    scale = 0.5
                }
            },
            east = {
                filename = "__pyindustry__/graphics/entity/py-tank-7000/east.png",
                width = 250,
                height = 150,
                shift = {0.35, -0.15},
                hr_version = {
                    filename = "__pyindustry__/graphics/entity/py-tank-7000/hr-east.png",
                    width = 499,
                    height = 299,
                    shift = {0.35, -0.15},
                    scale = 0.5
                }
            },
            south = {
                filename = "__pyindustry__/graphics/entity/py-tank-7000/south.png",
                width = 120,
                height = 239,
                shift = {0.34, -0.0},
                hr_version = {
                    filename = "__pyindustry__/graphics/entity/py-tank-7000/hr-south.png",
                    width = 239,
                    height = 477,
                    shift = {0.34, -0.0},
                    scale = 0.5
                }
            },
            west = {
                filename = "__pyindustry__/graphics/entity/py-tank-7000/west.png",
                width = 250,
                height = 150,
                shift = {0.35, -0.15},
                hr_version = {
                    filename = "__pyindustry__/graphics/entity/py-tank-7000/hr-west.png",
                    width = 499,
                    height = 299,
                    shift = {0.35, -0.15},
                    scale = 0.5
                }
            }
        },
        fluid_background = ENTITY.Pipes.empty_sprite(),
        window_background = ENTITY.Pipes.empty_sprite(),
        flow_sprite = ENTITY.Pipes.empty_sprite(),
        gas_flow = ENTITY.Pipes.empty_animation()
    },
    flow_length_in_ticks = 450,
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
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
