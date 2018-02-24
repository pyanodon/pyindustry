TECHNOLOGY {
    type = "technology",
    name = "py-warehouse-research",
    icon = "__pyindustry__/graphics/technology/warehouse-research.png",
    icon_size = 128,
    effects = {},
    prerequisites = {"steel-processing"},
    unit = {
        count = 40,
        ingredients = {{"science-pack-1", 1}},
        time = 20
    },
    order = "c-a"
}

TECHNOLOGY {
    type = "technology",
    name = "py-warehouse-logistics-research",
    icon = "__pyindustry__/graphics/technology/warehouse-logistics-research.png",
    icon_size = 128,
    effects = {},
    prerequisites = {"py-warehouse-research", "logistic-system"},
    unit = {
        count = 25,
        ingredients = {
            {"science-pack-1", 2},
            {"science-pack-2", 2},
            {"science-pack-3", 1},
            {"production-science-pack", 1}
        },
        time = 30
    },
    order = "c-k-a"
}
