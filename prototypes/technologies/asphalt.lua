TECHNOLOGY {
    type = "technology",
    name = "py-asphalt",
    icon = "__pyindustry__/graphics/technology/py-asphalt.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"concrete"},
    effects = {},
    unit = {
        count = 10,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
        },
        time = 35
    }
}
-- add prereq "coal-processing-1"
