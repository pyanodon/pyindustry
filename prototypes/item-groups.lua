data:extend {
    {
        type = "item-group",
        name = "py-industry",
        order = "t2",
        inventory_order = "t2",
        icon = "__pyindustrygraphics__/graphics/technology/item-group.png",
        icon_size = 128
    },
    {
        type = "item-subgroup",
        name = "py-industry",
        group = "py-industry",
        order = "ba"
    },
    {
        type = "item-subgroup",
        name = "py-electric",
        group = "logistics",
        order = "dc"
    },
    {
        type = "item-subgroup",
        name = "py-storage-tanks",
        group = "logistics",
        order = "ad"
    },
    {
        type = "item-subgroup",
        name = "py-pipes",
        group = "logistics",
        order = "c"
    },
    {
        type = "item-subgroup",
        name = "py-walls",
        group = "combat",
        order = "d"
    },
    {
        type = "item-subgroup",
        name = "py-containers-shed",
        group = "logistics",
        order = "ga"
    },
    {
        type = "item-subgroup",
        name = "py-containers-storehouse",
        group = "logistics",
        order = "gb"
    },
    {
        type = "item-subgroup",
        name = "py-containers-warehouse",
        group = "logistics",
        order = "gc"
    },
    {
        type = "item-subgroup",
        name = "py-containers-deposit",
        group = "logistics",
        order = "gd"
    },
    {
        type = "item-subgroup",
        name = "py-stations",
        group = "logistics",
        order = "ge"
    },
    {
        type = "item-subgroup",
        name = "py-robots",
        group = "logistics",
        order = "gf"
    },
    {
        type = "item-subgroup",
        name = "py-tiles",
        group = "logistics",
        order = "tb"
    },
    {
        type = "item-subgroup",
        name = "py-tiles-2",
        group = "logistics",
        order = "tc"
    },
    {
        type = "item-subgroup",
        name = "py-trains",
        group = "logistics",
        order = "u"
    },
    {
        type = "item-subgroup",
        name = "py-battery-equipment",
        group = "combat",
        order = "v1"
    },
    {
        type = "item-subgroup",
        name = "py-generator-equipment",
        group = "combat",
        order = "v3"
    },
    {
        type = "item-subgroup",
        name = "py-void",
        group = "production",
        order = "za"
    },
    {
        type = "item-subgroup",
        name = "py-void-items",
        group = "py-industry",
        order = "zb"
    },
    {
        type = "item-subgroup",
        name = "py-void-liquid",
        group = "py-industry",
        order = "zc"
    },
    {
        type = "item-subgroup",
        name = "py-void-gas",
        group = "py-industry",
        order = "zd"
    }
}

--data.raw['item-subgroup']['barrel'].group = 'py-industry'
data.raw["item-subgroup"]["barrel"].order = "zz"
data.raw["item"]["barrel"].subgroup = "barrel"
data.raw["item"]["barrel"].order = "a"
data.raw["recipe"]["barrel"].subgroup = nil
data.raw.item["stone-wall"].subgroup = "py-walls"
data.raw.item["gate"].subgroup = "py-walls"
--data.raw['item-subgroup']['equipment'].group = 'py-industry'
--data.raw['item-subgroup']['equipment'].order = 'v2'
--data.raw['item-subgroup']['armor'].group = 'py-industry'
--data.raw['item-subgroup']['armor'].order = 'v4'
data.raw["item-with-entity-data"]["artillery-wagon"].subgroup = "defensive-structure"
