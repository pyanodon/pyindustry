local NIOBIUM_CONNECTION_CATEGORY = settings.startup["py-braided-pipes"].value and {"niobium-pipe"} or nil

local function make_shadow(image)
    local shift = image.shift or {0, 0}
    local x, y = image[0] or image.x, image[1] or image.y

    local shadow = table.deepcopy(image)
    shadow.shift = {shift[1] + 0.2, shift[2] + 0.2}
    shadow.draw_as_shadow = true

    return {
        layers = {
            shadow,
            image
        }
    }
end

--- @param i integer
local function make_visualization(i)
    return
    {
        filename = "__base__/graphics/entity/pipe/visualization.png",
        priority = "extra-high",
        x = i * 64,
        size = 64,
        scale = 0.5,
        flags = {"icon"},
    }
end

local function py_pipepictures()
    return {
        straight_vertical_single = make_shadow {
            filename = "__pyindustrygraphics__/graphics/entity/niobium-pipe/pipe-straight-vertical-single.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        straight_vertical = make_shadow {
            filename = "__pyindustrygraphics__/graphics/entity/niobium-pipe/pipe-straight-vertical.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        straight_vertical_window = make_shadow {
            filename = "__pyindustrygraphics__/graphics/entity/niobium-pipe/pipe-straight-vertical-window.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        straight_horizontal_window = make_shadow {
            filename = "__pyindustrygraphics__/graphics/entity/niobium-pipe/pipe-straight-horizontal-window.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        straight_horizontal = make_shadow {
            filename = "__pyindustrygraphics__/graphics/entity/niobium-pipe/pipe-straight-horizontal.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        corner_up_right = make_shadow {
            filename = "__pyindustrygraphics__/graphics/entity/niobium-pipe/pipe-corner-up-right.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        corner_up_left = make_shadow {
            filename = "__pyindustrygraphics__/graphics/entity/niobium-pipe/pipe-corner-up-left.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        corner_down_right = make_shadow {
            filename = "__pyindustrygraphics__/graphics/entity/niobium-pipe/pipe-corner-down-right.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        corner_down_left = make_shadow {
            filename = "__pyindustrygraphics__/graphics/entity/niobium-pipe/pipe-corner-down-left.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        t_up = make_shadow {
            filename = "__pyindustrygraphics__/graphics/entity/niobium-pipe/pipe-t-up.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        t_down = make_shadow {
            filename = "__pyindustrygraphics__/graphics/entity/niobium-pipe/pipe-t-down.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        t_right = make_shadow {
            filename = "__pyindustrygraphics__/graphics/entity/niobium-pipe/pipe-t-right.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        t_left = make_shadow {
            filename = "__pyindustrygraphics__/graphics/entity/niobium-pipe/pipe-t-left.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        cross = make_shadow {
            filename = "__pyindustrygraphics__/graphics/entity/niobium-pipe/pipe-cross.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        ending_up = make_shadow {
            filename = "__pyindustrygraphics__/graphics/entity/niobium-pipe/pipe-ending-up.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        ending_down = make_shadow {
            filename = "__pyindustrygraphics__/graphics/entity/niobium-pipe/pipe-ending-down.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        ending_right = make_shadow {
            filename = "__pyindustrygraphics__/graphics/entity/niobium-pipe/pipe-ending-right.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        ending_left = make_shadow {
            filename = "__pyindustrygraphics__/graphics/entity/niobium-pipe/pipe-ending-left.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        horizontal_window_background = {
            filename = "__pyindustrygraphics__/graphics/entity/niobium-pipe/pipe-horizontal-window-background.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        vertical_window_background = {
            filename = "__pyindustrygraphics__/graphics/entity/niobium-pipe/pipe-vertical-window-background.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        fluid_background = {
            filename = "__pyindustrygraphics__/graphics/entity/niobium-pipe/fluid-background.png",
            priority = "extra-high",
            width = 64,
            height = 40,
            scale = 0.5
        },
        low_temperature_flow = {
            filename = "__pyindustrygraphics__/graphics/entity/niobium-pipe/steam.png",
            priority = "extra-high",
            line_length = 10,
            width = 48,
            height = 30,
            frame_count = 60,
            axially_symmetrical = false,
            direction_count = 1
        },
        straight_vertical_single_visualization = make_visualization(0),
        straight_vertical_visualization = make_visualization(5),
        straight_vertical_window_visualization = make_visualization(5),
        straight_horizontal_window_visualization = make_visualization(10),
        straight_horizontal_visualization = make_visualization(10),
        corner_up_right_visualization = make_visualization(3),
        corner_up_left_visualization = make_visualization(9),
        corner_down_right_visualization = make_visualization(6),
        corner_down_left_visualization = make_visualization(12),
        t_up_visualization = make_visualization(11),
        t_down_visualization = make_visualization(14),
        t_right_visualization = make_visualization(7),
        t_left_visualization = make_visualization(13),
        cross_visualization = make_visualization(15),
        ending_up_visualization = make_visualization(1),
        ending_down_visualization = make_visualization(4),
        ending_right_visualization = make_visualization(2),
        ending_left_visualization = make_visualization(8),
    }
end

local function py_pipecoverspictures()
    return {
        north = {
            layers = {
                {
                    filename = "__pyindustrygraphics__/graphics/entity/niobium-pipe/pipe-cover-north.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5
                },
                {
                    filename = "__pyindustrygraphics__/graphics/entity/niobium-pipe/pipe-cover-north-shadow.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    draw_as_shadow = true
                }
            }
        },
        east = {
            layers = {
                {
                    filename = "__pyindustrygraphics__/graphics/entity/niobium-pipe/pipe-cover-east.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5
                },
                {
                    filename = "__pyindustrygraphics__/graphics/entity/niobium-pipe/pipe-cover-east-shadow.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    draw_as_shadow = true
                }
            }
        },
        south = {
            layers = {
                {
                    filename = "__pyindustrygraphics__/graphics/entity/niobium-pipe/pipe-cover-south.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5
                },
                {
                    filename = "__pyindustrygraphics__/graphics/entity/niobium-pipe/pipe-cover-south-shadow.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    draw_as_shadow = true
                }
            }
        },
        west = {
            layers = {
                {
                    filename = "__pyindustrygraphics__/graphics/entity/niobium-pipe/pipe-cover-west.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5
                },
                {
                    filename = "__pyindustrygraphics__/graphics/entity/niobium-pipe/pipe-cover-west-shadow.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    draw_as_shadow = true
                }
            }
        }
    }
end

--NIOBIUM PIPES
RECIPE {
    type = "recipe",
    name = "niobium-pipe",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "copper-plate", amount = 1} --pycoal niobium-plate
    },
    results = {
        {type = "item", name = "niobium-pipe", amount = 2}
    }
}:add_unlock {"py-storage-tanks"}:replace_ingredient("copper-plate", "niobium-plate")

ITEM {
    type = "item",
    name = "niobium-pipe",
    icon = "__pyindustrygraphics__/graphics/icons/niobium-pipe.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-pipes",
    order = "pipe[niobium]a",
    place_result = "niobium-pipe",
    stack_size = 100
}

--NIOBIUM PIPES TO GROUND
RECIPE {
    type = "recipe",
    name = "niobium-pipe-to-ground",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "niobium-pipe", amount = 10},
        {type = "item", name = "copper-plate", amount = 1} --pycoal niobium-plate
    },
    results = {
        {type = "item", name = "niobium-pipe-to-ground", amount = 2}
    }
}:add_unlock {"py-storage-tanks"}:replace_ingredient("copper-plate", "niobium-plate")

ITEM {
    type = "item",
    name = "niobium-pipe-to-ground",
    icon = "__pyindustrygraphics__/graphics/icons/niobium-pipe-to-ground.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-pipes",
    order = "pipe[niobium]b",
    place_result = "niobium-pipe-to-ground",
    stack_size = 50
}

local recipes = {
    "xyhiphoe-pool-mk01",
    "compressor-mk01",
    "genlab-mk01",
    "kmauts-enclosure-mk01",
    "nmf-mk01",
    "py-heat-exchanger",
    "py-turbine",
    "science-coating"
}
for _, recipe_name in pairs(recipes) do
    RECIPE(recipe_name):replace_ingredient("pipe", "niobium-pipe")
end

data.raw["utility-constants"].default.default_pipeline_extent = 640
data.raw.pipe.pipe.fluid_box.max_pipeline_extent = 320
data.raw["pipe-to-ground"]["pipe-to-ground"].fluid_box.max_pipeline_extent = 320

ENTITY {
    type = "pipe",
    name = "niobium-pipe",
    icon = "__pyindustrygraphics__/graphics/icons/niobium-pipe.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {
        mining_time = 0.1,
        result = "niobium-pipe"
    },
    max_health = 100,
    corpse = "small-remnants",
    resistances = {
        {
            type = "fire",
            percent = 90,
        },
        {
            type = "impact",
            percent = 50,
        },
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box = {
        volume = 100,
        pipe_connections = {
            {
                position = {0, -0},
                direction = defines.direction.north,
                connection_category = NIOBIUM_CONNECTION_CATEGORY
            },
            {
                position = {0, 0},
                direction = defines.direction.east,
                connection_category = NIOBIUM_CONNECTION_CATEGORY
            },
            {
                position = {0, 0},
                direction = defines.direction.south,
                connection_category = NIOBIUM_CONNECTION_CATEGORY
            },
            {
                position = {-0, 0},
                direction = defines.direction.west,
                connection_category = NIOBIUM_CONNECTION_CATEGORY
            }
        },
        hide_connection_info = true,
        max_pipeline_extent = 640
    },
    pictures = py_pipepictures(),
    working_sound = {
        sound = {
            {
                filename = "__base__/sound/pipe.ogg",
                volume = 0.65
            }
        },
        match_volume_to_activity = true,
        max_sounds_per_prototype = 3
    },
    horizontal_window_bounding_box = {{-0.3125, -0.25}, {0.3125, 0.25}},
    vertical_window_bounding_box = {{-0.28125, -0.46875}, {0.03125, 0.125}}
}

ENTITY {
    type = "pipe-to-ground",
    name = "niobium-pipe-to-ground",
    icon = "__pyindustrygraphics__/graphics/icons/niobium-pipe-to-ground.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "niobium-pipe-to-ground"},
    max_health = 150,
    corpse = "small-remnants",
    resistances = {
        {
            type = "fire",
            percent = 90
        },
        {
            type = "impact",
            percent = 60,
        }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box = {
        volume = 100,
        pipe_covers = py_pipecoverspictures(),
        pipe_connections = {
            {
                position = {0, -0},
                direction = defines.direction.north,
                connection_category = NIOBIUM_CONNECTION_CATEGORY
            },
            {
                position = {0, 0},
                direction = defines.direction.south,
                connection_type = "underground",
                max_underground_distance = 32,
                connection_category = NIOBIUM_CONNECTION_CATEGORY
            }
        },
        hide_connection_info = true,
        max_pipeline_extent = 640
    },
    underground_sprite = {
        filename = "__core__/graphics/arrows/underground-lines.png",
        priority = "extra-high-no-scale",
        width = 64,
        height = 64,
        scale = 0.5
    },
    pictures = {
        north = make_shadow {
            filename = "__pyindustrygraphics__/graphics/entity/niobium-pipe/pipe-to-ground-up.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        south = make_shadow {
            filename = "__pyindustrygraphics__/graphics/entity/niobium-pipe/pipe-to-ground-down.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        west = make_shadow {
            filename = "__pyindustrygraphics__/graphics/entity/niobium-pipe/pipe-to-ground-left.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        east = make_shadow {
            filename = "__pyindustrygraphics__/graphics/entity/niobium-pipe/pipe-to-ground-right.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        }
    },
    visualization = {
        north = {
            filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
            priority = "extra-high",
            x = 64,
            size = 64,
            scale = 0.5,
            flags = {"icon"}
        },
        south = {
            filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
            priority = "extra-high",
            x = 192,
            size = 64,
            scale = 0.5,
            flags = {"icon"}
        },
        west = {
            filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
            priority = "extra-high",
            x = 256,
            size = 64,
            scale = 0.5,
            flags = {"icon"}
        },
        east = {
            filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
            priority = "extra-high",
            x = 128,
            size = 64,
            scale = 0.5,
            flags = {"icon"}
        },
    },
}
