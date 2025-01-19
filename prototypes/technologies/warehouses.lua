TECHNOLOGY {
    type = "technology",
    name = "py-warehouse-research",
    icon = "__pyindustrygraphics__/graphics/technology/warehouse-research.png",
    icon_size = 128,
    effects = {},
    prerequisites = {"steel-processing"},
    unit = {
        count = 40,
        ingredients = {{"automation-science-pack", 1}},
        time = 20
    },
    order = "c-a"
}

TECHNOLOGY {
    type = "technology",
    name = "py-warehouse-logistics-research",
    icon = "__pyindustrygraphics__/graphics/technology/warehouse-logistics-research.png",
    icon_size = 128,
    effects = {},
    prerequisites = {"py-warehouse-research", "logistic-system", "chemical-science-pack"},
    dependencies = {"py-warehouse-research"},
    unit = {
        count = 25,
        ingredients = {
            {"automation-science-pack", 2},
            {"logistic-science-pack",   2},
            {"chemical-science-pack",   1},
        },
        time = 30
    },
    order = "c-k-a"
}
