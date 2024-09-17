RECIPE {
    type = "recipe",
    name = "py-tank-1000",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {type = "item", name = "iron-plate", amount = 5},
        {type = "item", name = "pipe", amount = 10},
        {type = "item", name = "steel-plate", amount = 10}
    },
    results = {
        {type = "item", name = "py-tank-1000", amount = 1}
    }
}:add_unlock("py-storage-tanks")

ITEM {
    type = "item",
    name = "py-tank-1000",
    icon = "__pyindustry__/graphics/icons/py-tank-1000.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-storage-tanks",
    order = "a-c[py-items]",
    place_result = "py-tank-1000",
    stack_size = 10
}

ENTITY {
    type = "storage-tank",
    name = "py-tank-1000",
    icon = "__pyindustry__/graphics/icons/py-tank-1000.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 3, result = "py-tank-1000"},
    max_health = 500,
    corpse = "medium-remnants",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    two_direction_only = false,
    fluid_box = {
        volume = 10000,
        pipe_covers = _G.pipecoverspictures(),
        pipe_connections = {
            {
                position = {-0.96, 0},
                direction = defines.direction.west
            },
            {
                position = {0.96, 0},
                direction = defines.direction.east
            },
        }
    },
    window_bounding_box = {{-0.0, 0.0}, {0.0, 0.0}},
    pictures = {
        picture = {
            sheets = {
                {
                filename = "__pyindustry__/graphics/entity/py-tank-1000/py-tank-1000.png",
                priority = "extra-high",
                frames = 4,
                width = 96,
                height = 352,
                shift = util.by_pixel(0, -128),
                },
                {
                filename = "__pyindustry__/graphics/entity/py-tank-1000/py-tank-1000-sh.png",
                priority = "extra-high",
                frames = 4,
                width = 160,
                height = 92,
                draw_as_shadow = true,
                shift = util.by_pixel(64, 16),
                },
            },
        },
        fluid_background = py.empty_image(),
        window_background = py.empty_image(),
        flow_sprite = py.empty_image(),
        gas_flow = py.empty_image()
    },
    flow_length_in_ticks = 360,
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
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
