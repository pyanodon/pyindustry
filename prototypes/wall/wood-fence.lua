RECIPE {
    type = "recipe",
    name = "wood-fence",
    category = "crafting",
    enabled = false,
    ingredients = {
        {type = "item", name = "wood", amount = 2}
    },
    results = {
        {"wood-fence", 1}
    }
}:add_unlock("py-asphalt"):replace_ingredient("wood", "treated-wood")

ITEM {
    type = "item",
    name = "wood-fence",
    icon = "__pyindustry__/graphics/icons/wood-fence.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-walls",
    order = "z",
    place_result = "wood-fence",
    stack_size = 200
}

ENTITY {
    type = "wall",
    name = "wood-fence",
    icon = "__pyindustry__/graphics/icons/wood-fence.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    --drawing_box = {{-1.5,-1.5},{1.5,1.5}},
    minable = {mining_time = 0.1, result = "wood-fence"},
    max_health = 100,
    corpse = "wall-remnants",
    repair_sound = {filename = "__base__/sound/manual-repair-simple.ogg"},
    mined_sound = {filename = "__base__/sound/deconstruct-bricks.ogg"},
    repair_speed_modifier = 4,
    fast_replaceable_group = "wall",
    vehicle_impact_sound = {filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0},
    connected_gate_visualization = {filename = "__core__/graphics/arrows/underground-lines.png", priority = "high", width = 64, height = 64, scale = 0.5},
    wall_diode_green = {
        filename = "__base__/graphics/entity/wall/wall-diode-green.png",
        width = 21,
        height = 22,
        shift = {0, -0.78125}
    },
    wall_diode_green_light = {
        minimum_darkness = 0.3,
        color = {g = 1},
        shift = {0, -0.78125},
        size = 1,
        intensity = 0.3
    },
    wall_diode_red = {
        filename = "__base__/graphics/entity/wall/wall-diode-red.png",
        width = 21,
        height = 22,
        shift = {0, -0.78125}
    },
    wall_diode_red_light = {
        minimum_darkness = 0.3,
        color = {r = 1},
        shift = {0, -0.78125},
        size = 1,
        intensity = 0.3
    },
    resistances = {
        {type = "physical", decrease = 5, percent = 40},
        {type = "explosion", decrease = 2, percent = 40},
        {type = "fire", percent = 20},
        {type = "acid", percent = 20}
    },
    pictures = {
        single = {
            {
                filename = "__pyindustry__/graphics/walls/wood-fence/single.png",
                priority = "extra-high",
                width = 32,
                height = 49,
                shift = {0, -0.0}
            }
        },
        straight_vertical = {
            {
                filename = "__pyindustry__/graphics/walls/wood-fence/vertical.png",
                priority = "extra-high",
                width = 32,
                height = 55,
                shift = {0, -0.0}
            }
        },
        straight_horizontal = {
            {
                filename = "__pyindustry__/graphics/walls/wood-fence/horizontal.png",
                priority = "extra-high",
                width = 32,
                height = 48,
                shift = {0, -0.0}
            }
        },
        corner_right_down = {
            {
                filename = "__pyindustry__/graphics/walls/wood-fence/corner-right.png",
                priority = "extra-high",
                width = 32,
                height = 48,
                shift = {0, -0.0}
            }
        },
        corner_left_down = {
            {
                filename = "__pyindustry__/graphics/walls/wood-fence/corner-left.png",
                priority = "extra-high",
                width = 32,
                height = 48,
                shift = {0.0, -0.0}
            }
        },
        t_up = {
            {
                filename = "__pyindustry__/graphics/walls/wood-fence/t-down.png",
                priority = "extra-high",
                width = 32,
                height = 48,
                shift = {0, -0.0}
            }
        },
        ending_right = {
            {
                filename = "__pyindustry__/graphics/walls/wood-fence/end-right.png",
                priority = "extra-high",
                width = 32,
                height = 48,
                shift = {0, -0.0}
            }
        },
        ending_left = {
            {
                filename = "__pyindustry__/graphics/walls/wood-fence/end-left.png",
                priority = "extra-high",
                width = 32,
                height = 48,
                shift = {0, -0.0}
            }
        }
    }
}
