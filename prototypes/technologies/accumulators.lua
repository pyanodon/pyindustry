TECHNOLOGY {
    type = "technology",
    name = "py-accumulator-mk01",
    icon = "__pyindustry__/graphics/icons/accumulator-mk01.png",
    icon_size = 64,
    effects = {},
    prerequisites = {"chemical-science-pack", "electric-energy-accumulators"},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 2},
            {"logistic-science-pack", 2},
            {"chemical-science-pack", 1},
        },
        time = 60
    },
    order = "c-a"
}


TECHNOLOGY {
    type = "technology",
    name = "py-accumulator-mk02",
    icon = "__pyindustry__/graphics/icons/accumulator-mk02.png",
    icon_size = 64,
    effects = {},
    prerequisites = {"production-science-pack", "py-accumulator-mk01"},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 2},
            {"logistic-science-pack", 2},
            {"chemical-science-pack", 2},
            {"production-science-pack", 1},
        },
        time = 60
    },
    order = "c-k-a",
    upgrade = true
}
