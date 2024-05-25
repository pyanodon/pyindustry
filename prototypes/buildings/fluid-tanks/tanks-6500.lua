RECIPE {
    type = "recipe",
    name = "py-tank-6500",
    energy_required = 05,
    enabled = false,
    ingredients = {
        {"py-tank-4000", 1},
        {"pipe", 8},
        {"iron-stick", 30},
        {"steel-plate", 30}
    },
    results = {
        {"py-tank-6500", 1}
    }
}:add_unlock("py-storage-tanks")

ITEM {
    type = "item",
    name = "py-tank-6500",
    icon = "__pyindustry__/graphics/icons/py-tank-6500.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-storage-tanks",
    order = "a-c[py-items]",
    place_result = "py-tank-6500",
    stack_size = 10
}

ENTITY {
    type = "storage-tank",
    name = "py-tank-6500",
    icon = "__pyindustry__/graphics/icons/py-tank-6500.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation", "not-rotatable"},
    minable = {mining_time = 3, result = "py-tank-6500"},
    max_health = 500,
    corpse = "medium-remnants",
    collision_box = {{-2.3, -2.3}, {2.3, 2.3}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    two_direction_only = true,
    fluid_box = {
        base_area = 650,
        pipe_covers = _G.pipecoverspictures(),
        pipe_connections = {
            {position = {0, -3}},
            {position = {3, 0}},
            {position = {0, 3}},
            {position = {-3, 0}}
        }
    },
    window_bounding_box = {{-0.0, 0.0}, {0.0, 0.0}},
    pictures = {
        picture = {
            sheet = {
                filename = "__pyindustry__/graphics/entity/py-tank-6500/py-tank-6500.png",
                priority = "extra-high",
                frames = 1,
                width = 182,
                height = 201,
                shift = {0.25, -0.3}
            }
        },
        fluid_background = py.empty_image(),
        window_background = py.empty_image(),
        flow_sprite = py.empty_image(),
        gas_flow = py.empty_image()
    },
    flow_length_in_ticks = 360,
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
