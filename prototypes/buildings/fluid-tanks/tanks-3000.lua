RECIPE {
    type = "recipe",
    name = "py-tank-3000",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {type = "item", name = "iron-plate",  amount = 15},
        {type = "item", name = "pipe",        amount = 20},
        {type = "item", name = "steel-plate", amount = 10},
    },
    results = {
        {type = "item", name = "py-tank-3000", amount = 1}
    }
}:add_unlock("py-storage-tanks")

ITEM {
    type = "item",
    name = "py-tank-3000",
    icon = "__pyindustrygraphics__/graphics/icons/py-tank-3000.png",
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
    icon = "__pyindustrygraphics__/graphics/icons/py-tank-3000.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 3, result = "py-tank-3000"},
    max_health = 100,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
    two_direction_only = true,
    fluid_box = {
        volume = 30000,
        pipe_covers = _G.pipecoverspictures(),
        pipe_connections = {
            {
                position = {-0.45, -0.5},
                direction = defines.direction.west
            },
            {
                position = {-0.45, 0.5},
                direction = defines.direction.west
            },
            {
                position = {0.45, -0.5},
                direction = defines.direction.east
            },
            {
                position = {0.45, 0.5},
                direction = defines.direction.east
            }
        }
    },
    window_bounding_box = {{-0.0, 0.0}, {0.0, 0.0}},
    pictures = {
        picture = {
            sheet = {
                filename = "__pyindustrygraphics__/graphics/entity/py-tank-3000/py-tank-3000.png",
                priority = "extra-high",
                frames = 2,
                width = 133,
                height = 157,
                shift = {0.0, -0.0},
                scale = 0.5
            }
        },
        fluid_background = py.empty_image(),
        window_background = py.empty_image(),
        flow_sprite = py.empty_image(),
        gas_flow = py.empty_image()
    },
    flow_length_in_ticks = 660,
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
    circuit_connector = circuit_connector_definitions["tanks-3000"],
}
