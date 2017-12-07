local Pipes = require("stdlib.data.pipes")
local Recipe = require("stdlib/data/recipe")
local pipecoverspictures = _G.pipecoverspictures

local recipe = {
    type = "recipe",
    name = "py-tank-1500",
    energy_required = 15,
    enabled = false,
    ingredients = {
        {"iron-plate", 20},
        {"pipe", 10},
        {"steel-plate", 10}
    },
    result = "py-tank-1500"
}

local item = {
    type = "item",
    name = "py-tank-1500",
    icon = "__pyindustry__/graphics/icons/py-tank-1500.png",
    flags = {"goes-to-quickbar"},
    subgroup = "py-storage-tanks",
    order = "a-c[py-items]",
    place_result = "py-tank-1500",
    stack_size = 10
}

local entity = {
    type = "storage-tank",
    name = "py-tank-1500",
    icon = "__pyindustry__/graphics/icons/py-tank-1500.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 3, result = "py-tank-1500"},
    max_health = 500,
    corpse = "medium-remnants",
    collision_box = {{-1.3, -1.3}, {1.3, 1.3}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    two_direction_only = true,
    fluid_box = {
        base_area = 150,
        pipe_covers = pipecoverspictures(),
        pipe_connections = {
            {position = {0, -2}},
            {position = {2, 0}},
            {position = {0, 2}},
            {position = {-2, 0}}
        }
    },
    window_bounding_box = {{-0.0, 0.0}, {0.0, 0.0}},
    pictures = {
        picture = {
            sheet = {
                filename = "__pyindustry__/graphics/entity/py-tank-1500/py-tank-1500.png",
                priority = "extra-high",
                frames = 1,
                width = 119,
                height = 141,
                shift = {0.29, -0.69}
            }
        },
        fluid_background = Pipes.empty_sprite(),
        window_background = Pipes.empty_sprite(),
        flow_sprite = Pipes.empty_sprite(),
        gas_flow = Pipes.empty_animation()
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
    circuit_wire_max_distance = 9
}

if _G.get_circuit_connector_sprites then
    entity.circuit_connector_sprites = {
        _G.get_circuit_connector_sprites({0, 0}, nil, 0),
        _G.get_circuit_connector_sprites({0, 0}, nil, 0),
        _G.get_circuit_connector_sprites({0, 0}, nil, 0),
        _G.get_circuit_connector_sprites({0, 0}, nil, 0)
    }
    entity.circuit_wire_connection_points = {
        {
            shadow = {red = {0, 0}, green = {0, 0}},
            wire = {red = {0, 0}, green = {0, 0}}
        },
        {
            shadow = {red = {0, 0}, green = {0, 0}},
            wire = {red = {0, 0}, green = {0, 0}}
        },
        {
            shadow = {red = {0, 0}, green = {0, 0}},
            wire = {red = {0, 0}, green = {0, 0}}
        },
        {
            shadow = {red = {0, 0}, green = {0, 0}},
            wire = {red = {0, 0}, green = {0, 0}}
        }
    }
else
    entity.circuit_wire_connection_points = _G.circuit_connector_definitions["storage-tank"].points
    entity.circuit_connector_sprites = _G.circuit_connector_definitions["storage-tank"].sprites
end

Recipe:extend {recipe, item, entity}

Recipe("py-tank-1500"):add_unlock("py-storage-tanks")
