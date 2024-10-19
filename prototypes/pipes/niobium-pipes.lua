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
        straight_vertical_single = {
            filename = "__pyindustry__/graphics/entity/niobium-pipe/hr-pipe-straight-vertical-single.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        straight_vertical = {
            filename = "__pyindustry__/graphics/entity/niobium-pipe/hr-pipe-straight-vertical.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        straight_vertical_window = {
            filename = "__pyindustry__/graphics/entity/niobium-pipe/hr-pipe-straight-vertical-window.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        straight_horizontal_window = {
            filename = "__pyindustry__/graphics/entity/niobium-pipe/hr-pipe-straight-horizontal-window.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        straight_horizontal = {
            filename = "__pyindustry__/graphics/entity/niobium-pipe/hr-pipe-straight-horizontal.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        corner_up_right = {
            filename = "__pyindustry__/graphics/entity/niobium-pipe/hr-pipe-corner-up-right.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        corner_up_left = {
            filename = "__pyindustry__/graphics/entity/niobium-pipe/hr-pipe-corner-up-left.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        corner_down_right = {
            filename = "__pyindustry__/graphics/entity/niobium-pipe/hr-pipe-corner-down-right.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        corner_down_left = {
            filename = "__pyindustry__/graphics/entity/niobium-pipe/hr-pipe-corner-down-left.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        t_up = {
            filename = "__pyindustry__/graphics/entity/niobium-pipe/hr-pipe-t-up.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        t_down = {
            filename = "__pyindustry__/graphics/entity/niobium-pipe/hr-pipe-t-down.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        t_right = {
            filename = "__pyindustry__/graphics/entity/niobium-pipe/hr-pipe-t-right.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        t_left = {
            filename = "__pyindustry__/graphics/entity/niobium-pipe/hr-pipe-t-left.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        cross = {
            filename = "__pyindustry__/graphics/entity/niobium-pipe/hr-pipe-cross.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        ending_up = {
            filename = "__pyindustry__/graphics/entity/niobium-pipe/hr-pipe-ending-up.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        ending_down = {
            filename = "__pyindustry__/graphics/entity/niobium-pipe/hr-pipe-ending-down.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        ending_right = {
            filename = "__pyindustry__/graphics/entity/niobium-pipe/hr-pipe-ending-right.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        ending_left = {
            filename = "__pyindustry__/graphics/entity/niobium-pipe/hr-pipe-ending-left.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        horizontal_window_background = {
            filename = "__pyindustry__/graphics/entity/niobium-pipe/hr-pipe-horizontal-window-background.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        vertical_window_background = {
            filename = "__pyindustry__/graphics/entity/niobium-pipe/hr-pipe-vertical-window-background.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        fluid_background = {
            filename = "__pyindustry__/graphics/entity/niobium-pipe/hr-fluid-background.png",
            priority = "extra-high",
            width = 64,
            height = 40,
            scale = 0.5
        },
        low_temperature_flow = {
            filename = "__pyindustry__/graphics/entity/niobium-pipe/hr-steam.png",
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
                    filename = "__pyindustry__/graphics/entity/niobium-pipe/hr-pipe-cover-north.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5
                },
                {
                    filename = "__pyindustry__/graphics/entity/niobium-pipe/hr-pipe-cover-north-shadow.png",
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
                    filename = "__pyindustry__/graphics/entity/niobium-pipe/hr-pipe-cover-east.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5
                },
                {
                    filename = "__pyindustry__/graphics/entity/niobium-pipe/hr-pipe-cover-east-shadow.png",
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
                    filename = "__pyindustry__/graphics/entity/niobium-pipe/hr-pipe-cover-south.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5
                },
                {
                    filename = "__pyindustry__/graphics/entity/niobium-pipe/hr-pipe-cover-south-shadow.png",
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
                    filename = "__pyindustry__/graphics/entity/niobium-pipe/hr-pipe-cover-west.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5
                },
                {
                    filename = "__pyindustry__/graphics/entity/niobium-pipe/hr-pipe-cover-west-shadow.png",
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
}:add_unlock {"niobium", "py-storage-tanks"}:replace_ingredient("copper-plate", "niobium-plate")

ITEM {
    type = "item",
    name = "niobium-pipe",
    icon = "__pyindustry__/graphics/icons/niobium-pipe.png",
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
        {"niobium-pipe", 10},
        {"copper-plate", 1} --pycoal niobium-plate
    },
    results = {
        {"niobium-pipe-to-ground", 2}
    }
}:add_unlock {"niobium", "py-storage-tanks"}:replace_ingredient("copper-plate", "niobium-plate")

ITEM {
    type = "item",
    name = "niobium-pipe-to-ground",
    icon = "__pyindustry__/graphics/icons/niobium-pipe-to-ground.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-pipes",
    order = "pipe[niobium]b",
    place_result = "niobium-pipe-to-ground",
    stack_size = 50
}

local recipes = {
    "xyhiphoe-pool-mk01",
    "hydrocyclone-mk01",
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

ENTITY {
    type = "pipe",
    name = "niobium-pipe",
    icon = "__pyindustry__/graphics/icons/niobium-pipe.png",
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
            percent = 90
        }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box = {
        volume = 200,
        pipe_connections = {
            {
                position = {0, -0},
                direction = defines.direction.north,
                connection_category = {"niobium-pipe"}
            },
            {
                position = {0, 0},
                direction = defines.direction.east,
                connection_category = {"niobium-pipe"}
            },
            {
                position = {0, 0},
                direction = defines.direction.south,
                connection_category = {"niobium-pipe"}
            },
            {
                position = {-0, 0},
                direction = defines.direction.west,
                connection_category = {"niobium-pipe"}
            }
        },
        hide_connection_info = true,
        max_pipeline_extent = (data.raw.pipe.pipe.fluid_box.max_pipeline_extent or data.raw["utility-constants"].default.default_pipeline_extent) * 2
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
        max_sounds_per_type = 3
    },
    horizontal_window_bounding_box = {{-0.3125, -0.25}, {0.3125, 0.25}},
    vertical_window_bounding_box = {{-0.28125, -0.46875}, {0.03125, 0.125}}
}

ENTITY {
    type = "pipe-to-ground",
    name = "niobium-pipe-to-ground",
    icon = "__pyindustry__/graphics/icons/niobium-pipe-to-ground.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "niobium-pipe-to-ground"},
    max_health = 100,
    corpse = "small-remnants",
    resistances = {
        {
            type = "fire",
            percent = 80
        }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box = {
        volume = 200,
        pipe_covers = py_pipecoverspictures(),
        pipe_connections = {
            {
                position = {0, -0},
                direction = defines.direction.north,
                connection_category = {"niobium-pipe"}
            },
            {
                position = {0, 0},
                direction = defines.direction.south,
                connection_type = "underground",
                max_underground_distance = 32,
                connection_category = {"niobium-pipe"}
            }
        },
        hide_connection_info = true,
        max_pipeline_extent = (data.raw.pipe.pipe.fluid_box.max_pipeline_extent or data.raw["utility-constants"].default.default_pipeline_extent) * 2
    },
    underground_sprite = {
        filename = "__core__/graphics/arrows/underground-lines.png",
        priority = "extra-high-no-scale",
        width = 64,
        height = 64,
        scale = 0.5
    },
    pictures = {
        north = {
            filename = "__pyindustry__/graphics/entity/niobium-pipe/hr-pipe-to-ground-up.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        south = {
            filename = "__pyindustry__/graphics/entity/niobium-pipe/hr-pipe-to-ground-down.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        west = {
            filename = "__pyindustry__/graphics/entity/niobium-pipe/hr-pipe-to-ground-left.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        east = {
            filename = "__pyindustry__/graphics/entity/niobium-pipe/hr-pipe-to-ground-right.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        }
    },
    visualization = {
        north =
        {
            filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
            priority = "extra-high",
            x = 64,
            size = 64,
            scale = 0.5,
            flags = {"icon"}
        },
        south =
        {
            filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
            priority = "extra-high",
            x = 192,
            size = 64,
            scale = 0.5,
            flags = {"icon"}
        },
        west =
        {
            filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
            priority = "extra-high",
            x = 256,
            size = 64,
            scale = 0.5,
            flags = {"icon"}
        },
        east =
        {
            filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
            priority = "extra-high",
            x = 128,
            size = 64,
            scale = 0.5,
            flags = {"icon"}
        },
    },
}

data.raw.pipe.pipe.next_upgrade = "niobium-pipe"
data.raw["pipe-to-ground"]["pipe-to-ground"].next_upgrade = "niobium-pipe-to-ground"
