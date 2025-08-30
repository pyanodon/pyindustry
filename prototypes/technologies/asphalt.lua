TECHNOLOGY({
    type = "technology",
    name = "py-asphalt",
    icon = "__pyindustrygraphics__/graphics/technology/tiles-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = { "concrete" },
    effects = {},
    unit = {
        count = 10,
        ingredients = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack",   1 },
        },
        time = 35
    }
})

if mods["pyrawores"] then
    TECHNOLOGY({
        type = "technology",
        name = "py-asphalt-mk02",
        icon = "__pyindustrygraphics__/graphics/technology/tiles-mk02.png",
        icon_size = 128,
        order = "c-a",
        prerequisites = { "nexelit-mk01" },
        dependencies = { "py-asphalt" },
        effects = {},
        unit = {
            count = 10,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack",   1 },
            },
            time = 35
        }
    })
end

if mods.pyalternativeenergy then
    TECHNOLOGY({
        type = "technology",
        name = "py-asphalt-mk03",
        icon = "__pyindustrygraphics__/graphics/technology/tiles-mk03.png",
        icon_size = 128,
        order = "c-a",
        prerequisites = { "py-asphalt-mk02" },
        dependencies = { "py-asphalt-mk02" },
        effects = {},
        unit = {
            count = 10,
            ingredients = {
                { "automation-science-pack", 1 },
                { "py-science-pack-1",       1 },
                { "logistic-science-pack",   1 },
                { "military-science-pack",   1 },
            },
            time = 35
        }
    })
end
