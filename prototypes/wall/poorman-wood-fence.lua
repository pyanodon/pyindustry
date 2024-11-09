RECIPE {
    type = "recipe",
    name = "poorman-wood-fence",
    category = "crafting",
    enabled = true,
    ingredients = {
        {type = "item", name = "wood", amount = 3}
    },
    results = {
        {type = "item", name = "poorman-wood-fence", amount = 1}
    }
}

ITEM {
    type = "item",
    name = "poorman-wood-fence",
    icon = "__pyindustry__/graphics/icons/poorman-wood-fence.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-walls",
    order = "z",
    place_result = "poorman-wood-fence",
    stack_size = 100
}

ENTITY {
    type = "wall",
    name = "poorman-wood-fence",
    icon = "__pyindustry__/graphics/icons/poorman-wood-fence.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    --drawing_box = {{-1.5,-1.5},{1.5,1.5}},
    minable = {mining_time = 0.1, result = "poorman-wood-fence"},
    max_health = 100,
    corpse = "wall-remnants",
    repair_sound = {filename = "__base__/sound/manual-repair-simple.ogg"},
    mined_sound = {filename = "__base__/sound/deconstruct-bricks.ogg"},
    repair_speed_modifier = 4,
    fast_replaceable_group = "wall",
    impact_category = "stone", 
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
        {type = "physical",  decrease = 5, percent = 30},
        {type = "explosion", decrease = 2, percent = 30},
        {type = "fire",      percent = 10},
        {type = "acid",      percent = 10}
    },
    pictures = {
        single = {
            {
                filename = "__pyindustry__/graphics/walls/poorman-wood-fence/single.png",
                priority = "extra-high",
                width = 32,
                height = 40,
                shift = {0, -0.2}
            }
        },
        straight_vertical = {
            {
                filename = "__pyindustry__/graphics/walls/poorman-wood-fence/vertical.png",
                priority = "extra-high",
                width = 32,
                height = 45,
                shift = {0, -0.2}
            }
        },
        straight_horizontal = {
            {
                filename = "__pyindustry__/graphics/walls/poorman-wood-fence/horizontal-2.png",
                priority = "extra-high",
                width = 32,
                height = 40,
                shift = {0, -0.2}
            },
            {
                filename = "__pyindustry__/graphics/walls/poorman-wood-fence/horizontal-1.png",
                priority = "extra-high",
                width = 32,
                height = 40,
                shift = {0, -0.2}
            }
        },
        corner_right_down = {
            {
                filename = "__pyindustry__/graphics/walls/poorman-wood-fence/corner-right.png",
                priority = "extra-high",
                width = 32,
                height = 40,
                shift = {0, -0.2}
            }
        },
        corner_left_down = {
            {
                filename = "__pyindustry__/graphics/walls/poorman-wood-fence/corner-left.png",
                priority = "extra-high",
                width = 32,
                height = 40,
                shift = {0, -0.19}
            }
        },
        t_up = {
            {
                filename = "__pyindustry__/graphics/walls/poorman-wood-fence/t-down.png",
                priority = "extra-high",
                width = 32,
                height = 45,
                shift = {0, -0.2}
            }
        },
        ending_right = {
            {
                filename = "__pyindustry__/graphics/walls/poorman-wood-fence/end-left.png",
                priority = "extra-high",
                width = 32,
                height = 40,
                shift = {0, -0.2}
            }
        },
        ending_left = {
            {
                filename = "__pyindustry__/graphics/walls/poorman-wood-fence/end-right.png",
                priority = "extra-high",
                width = 32,
                height = 38,
                shift = {0, -0.2}
            }
        }
    }
}
