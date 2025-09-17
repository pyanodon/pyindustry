RECIPE {
    type = "recipe",
    name = "py-tank-27500",
    energy_required = 3,
    enabled = false,
    ingredients = {
        {type = "item", name = "iron-stick",  amount = 40},
        {type = "item", name = "pipe",        amount = 8},
        {type = "item", name = "steel-plate", amount = 30}
    },
    results = {
        {type = "item", name = "py-tank-27500", amount = 1}
    }
}:add_unlock("py-storage-tanks")

ITEM {
    type = "item",
    name = "py-tank-27500",
    icon = "__pyindustrygraphics__/graphics/icons/py-tank-27500.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-storage-tanks",
    order = "a-c[py-items]",
    place_result = "py-tank-27500",
    stack_size = 10
}

ENTITY {
    type = "storage-tank",
    name = "py-tank-27500",
    icon = "__pyindustrygraphics__/graphics/icons/py-tank-27500.png",
    icon_size = 64,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 3, result = "py-tank-27500"},
    max_health = 500,
    corpse = "medium-remnants",
    collision_box = {{-1.3, -1.3}, {1.3, 1.3}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    two_direction_only = true,
    fluid_box = {
        volume = 27500,
        pipe_covers = _G.pipecoverspictures(),
        pipe_connections = {
            {
                position = {0, -1.04},
                direction = defines.direction.north
            },
            {
                position = {1.04, 0},
                direction = defines.direction.east
            },
            {
                position = {0, 1.04},
                direction = defines.direction.south
            },
            {
                position = {-1.04, 0},
                direction = defines.direction.west
            }
        }
    },
    window_bounding_box = {{-0.0, 0.0}, {0.0, 0.0}},
    pictures = {
        picture = {
            sheet = {
                filename = "__pyindustrygraphics__/graphics/entity/py-tank-27500/py-tank-27500.png",
                priority = "extra-high",
                frames = 1,
                width = 165,
                height = 209,
                shift = {1.0, -1.5}
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
