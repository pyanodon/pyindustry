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
