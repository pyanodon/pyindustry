local Pipes = require("stdlib.data.pipes")
local Recipe = require("stdlib/data/recipe")
local pipecoverspictures = _G.pipecoverspictures

local recipe = {
    type = "recipe",
    name = "py-tank-7000",
    energy_required = 35,
    enabled = false,
    ingredients = {
		{"storage-tank", 1},
        {"iron-plate", 20},
        {"pipe", 10},
        {"steel-plate", 10}
    },
    result = "py-tank-7000"
}

local item = {
    type = "item",
    name = "py-tank-7000",
    icon = "__pyindustry__/graphics/icons/py-tank-7000.png",
    flags = {"goes-to-quickbar"},
    subgroup = "py-storage-tanks",
    order = "a-c[py-items]",
    place_result = "py-tank-7000",
    stack_size = 10
}

local entity = {
    type = "storage-tank",
    name = "py-tank-7000",
    icon = "__pyindustry__/graphics/icons/py-tank-7000.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 3, result = "py-tank-7000"},
    max_health = 100,
    corpse = "medium-remnants",
    collision_box = {{-3.3, -1.3}, {3.3, 1.3}},
    selection_box = {{-3.5, -1.5}, {3.5, 1.5}},
    two_direction_only = true,
    fluid_box = {
        base_area = 700,
        pipe_covers = pipecoverspictures(),
        pipe_connections = {
            {position = {4.0, -1.0}},
			{position = {4.0, 1.0}},
        }
    },
    window_bounding_box = {{-0.0, 0.0}, {0.0, 0.0}},
    pictures = {
	picture = {
		  north =
		  {
			filename = "__pyindustry__/graphics/entity/py-tank-7000/horizontal.png",
			width = 250,
			height = 150,
			shift = {0.32, -0.20},
			hr_version = {
				filename = "__pyindustry__/graphics/entity/py-tank-7000/hr-horizontal.png",
				width = 499,
				height = 299,
				shift = {0.32, -0.20},
				scale = 0.5
			}
		  },
		  east =
		  {
			filename = "__pyindustry__/graphics/entity/py-tank-7000/vertical.png",
			width = 120,
			height = 239,
			shift = {0.3, -0.2},
			hr_version = {
				filename = "__pyindustry__/graphics/entity/py-tank-7000/hr-vertical.png",
				width = 239,
				height = 477,
				shift = {0.3, -0.2},
				scale = 0.5
			}
		  },
		  south =
		  {
			filename = "__pyindustry__/graphics/entity/py-tank-7000/horizontal.png",
			width = 250,
			height = 150,
			shift = {0.32, -0.20},
			hr_version = {
				filename = "__pyindustry__/graphics/entity/py-tank-7000/hr-horizontal.png",
				width = 499,
				height = 299,
				shift = {0.32, -0.20},
				scale = 0.5
			}
		  },
		  west =
		  {
			filename = "__pyindustry__/graphics/entity/py-tank-7000/vertical.png",
			width = 120,
			height = 239,
			shift = {0.3, -0.2},
			hr_version = {
				filename = "__pyindustry__/graphics/entity/py-tank-7000/hr-vertical.png",
				width = 239,
				height = 477,
				shift = {0.3, -0.2},
				scale = 0.5
			}
		  },
		},
        fluid_background = Pipes.empty_sprite(),
        window_background = Pipes.empty_sprite(),
        flow_sprite = Pipes.empty_sprite(),
        gas_flow = Pipes.empty_animation()
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

Recipe("py-tank-7000"):add_unlock("py-storage-tanks")
