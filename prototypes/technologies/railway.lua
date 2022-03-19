TECHNOLOGY {
    type = "technology",
    name = "railway-mk01",
    icon = "__pyindustry__/graphics/technology/railway-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"steel-processing"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 1},
        },
        time = 45
    }
}

if mods['pycoalprocessing'] then
    TECHNOLOGY("railway-mk01"):add_prereq("wood-processing"):remove_prereq("steel-processing")

    TECHNOLOGY {
        type = "technology",
        name = "railway-mk02",
        icon = "__pyindustry__/graphics/technology/railway-mk02.png",
        icon_size = 128,
        order = "c-a",
        prerequisites = {"railway-mk01", "niobium", "nexelit"},
        dependencies = {"railway-mk01"},
        effects = {},
        unit = {
            count = 250,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
            },
            time = 45
        }
    }
end

if mods['pyalternativeenergy'] then

    TECHNOLOGY {
        type = "technology",
        name = "railway-mk04",
        icon = "__pyindustry__/graphics/technology/railway-mk04.png",
        icon_size = 128,
        order = "c-a",
        prerequisites = {"railway-mk02","intermetallics-mk03","battery-mk04"},
        dependencies = {"railway-mk02"},
        effects = {},
        unit = {
            count = 400,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
            },
            time = 45
        }
    }
end
