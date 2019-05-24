RECIPE {
    type = "recipe",
    name = "py-tank-3000",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {"iron-plate", 20},
        {"pipe", 20},
        {"steel-plate", 10},
    },
    results = {
        {"py-tank-3000", 1}
    }
}:add_unlock("py-storage-tanks")

ITEM {
    type = "item",
    name = "py-tank-3000",
    icon = "__pyindustry__/graphics/icons/py-tank-3000.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-storage-tanks",
    order = "a-c[py-items]",
    place_result = "py-tank-3000",
    stack_size = 10
}

ENTITY {
    type = "storage-tank",
    name = "py-tank-3000",
    icon = "__pyindustry__/graphics/icons/py-tank-3000.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 3, result = "py-tank-3000"},
    max_health = 100,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
    two_direction_only = true,
    fluid_box = {
        base_area = 300,
        pipe_covers = _G.pipecoverspictures(),
        pipe_connections = {
            {position = {-1.5, -0.5}},
            {position = {-1.5, 0.5}},
            {position = {1.5, -0.5}},
            {position = {1.5, 0.5}}
        }
    },
    window_bounding_box = {{-0.0, 0.0}, {0.0, 0.0}},
    pictures = {
        picture = {
            sheet = {
                filename = "__pyindustry__/graphics/entity/py-tank-3000/py-tank-3000.png",
                priority = "extra-high",
                frames = 2,
                width = 66,
                height = 79,
                shift = {0.0, -0.0},
                hr_version = {
                    filename = "__pyindustry__/graphics/entity/py-tank-3000/hr-py-tank-3000.png",
                    priority = "extra-high",
                    frames = 2,
                    width = 133,
                    height = 157,
                    shift = {0.0, -0.0},
                    scale = 0.5
                }
            }
        },
        fluid_background = ENTITY.Sprites.empty_sprite(),
        window_background = ENTITY.Sprites.empty_sprite(),
        flow_sprite = ENTITY.Sprites.empty_sprite(),
        gas_flow = ENTITY.Sprites.empty_animation()
    },
    flow_length_in_ticks = 660,
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
