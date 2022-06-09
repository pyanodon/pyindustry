TECHNOLOGY {
    type = "technology",
    name = "radars-mk01",
    icon = "__pyindustry__/graphics/technology/radars-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"steel-processing"},
    effects = {},
    unit = {
        count = 35,
        ingredients = {
            {"automation-science-pack", 2},
            {"logistic-science-pack", 2},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = "technology",
    name = "radars-mk02",
    icon = "__pyindustry__/graphics/technology/radars-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"radars-mk01"},
    dependencies = {"radars-mk01"},
    effects = {},
    unit = {
        count = 35,
        ingredients = {
            {"automation-science-pack", 2},
            {"logistic-science-pack", 2},
            {"chemical-science-pack", 2},
        },
        time = 45
    }
}
