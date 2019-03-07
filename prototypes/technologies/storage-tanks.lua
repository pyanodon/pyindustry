TECHNOLOGY {
    type = "technology",
    name = "py-storage-tanks",
    icon = "__pyindustry__/graphics/technology/storage-tanks.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"fluid-handling"},
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
