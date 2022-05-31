TECHNOLOGY {
    type = "technology",
    name = "py-accumulator-mk01",
    icon = "__pyindustry__/graphics/technology/accumulator-mk02.png",
    icon_size = 128,
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
    icon = "__pyindustry__/graphics/technology/accumulator-mk03.png",
    icon_size = 128,
    effects = {},
    prerequisites = {"production-science-pack", "py-accumulator-mk01"},
    dependencies = {"py-accumulator-mk01"},
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

if mods["pyalternativeenergy"] then
    TECHNOLOGY {
        type = "technology",
        name = "py-accumulator-mk03",
        icon = "__pyindustry__/graphics/technology/accumulator-mk04.png",
        icon_size = 128,
        effects = {},
        prerequisites = {"production-science-pack", "py-accumulator-mk01"},
        dependencies = {"py-accumulator-mk02"},
        unit = {
            count = 200,
            ingredients = {
                {"automation-science-pack", 2},
                {"logistic-science-pack", 2},
                {'military-science-pack', 1},
                {"chemical-science-pack", 2},
                {"production-science-pack", 1},
                {"utility-science-pack", 1},
            },
            time = 60
        },
        order = "c-k-a",
        upgrade = true
    }
end
