data:extend {
    {
        type = "item-group",
        name = "py-industry",
        order = "t2",
        inventory_order = "t2",
        icon = "__pyindustry__/graphics/technology/item-group.png",
        icon_size = 128
    },
    {
        type = "item-subgroup",
        name = "py-industry",
        group = "py-industry",
        order = "a"
    },
    {
        type = "item-subgroup",
        name = "py-electric",
        group = "py-industry",
        order = "ab"
    },
    {
        type = "item-subgroup",
        name = "py-storage-tanks",
        group = "py-industry",
        order = "b"
    },
    {
        type = "item-subgroup",
        name = "py-pipes",
        group = "py-industry",
        order = "c"
    },
    {
        type = "item-subgroup",
        name = "py-walls",
        group = "py-industry",
        order = "d"
    },
    {
        type = "item-subgroup",
        name = "py-containers-shed",
        group = "py-industry",
        order = "ea"
    },
    {
        type = "item-subgroup",
        name = "py-containers-storehouse",
        group = "py-industry",
        order = "eb"
    },
    {
        type = "item-subgroup",
        name = "py-containers-warehouse",
        group = "py-industry",
        order = "ec"
    },
    {
        type = "item-subgroup",
        name = "py-containers-deposit",
        group = "py-industry",
        order = "ed"
    },
    {
        type = "item-subgroup",
        name = "py-stations",
        group = "py-industry",
        order = "f"
    },
    {
        type = "item-subgroup",
        name = "py-robots",
        group = "py-industry",
        order = "g"
    },
    {
        type = "item-subgroup",
        name = "py-tiles",
        group = "py-industry",
        order = "t"
    },
    {
        type = "item-subgroup",
        name = "py-trains",
        group = "py-industry",
        order = "u"
    },
    {
        type = "item-subgroup",
        name = "py-battery-equipment",
        group = "py-industry",
        order = "v1"
    },
    {
        type = "item-subgroup",
        name = "py-generator-equipment",
        group = "py-industry",
        order = "v3"
    },
    {
        type = "item-subgroup",
        name = "py-void",
        group = "py-industry",
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

data.raw['item-subgroup']['barrel'].group = 'py-industry'
data.raw['item-subgroup']['barrel'].order = 'zz'
data.raw['item']['empty-barrel'].subgroup = 'barrel'
data.raw['item']['empty-barrel'].order = 'a'
data.raw['recipe']['empty-barrel'].subgroup = nil
data.raw.item['stone-wall'].subgroup = 'py-walls'
data.raw.item['gate'].subgroup = 'py-walls'
data.raw['item-subgroup']['equipment'].group = 'py-industry'
data.raw['item-subgroup']['equipment'].order = 'v2'
data.raw['item-subgroup']['armor'].group = 'py-industry'
data.raw['item-subgroup']['armor'].order = 'v4'
data.raw['item-with-entity-data']['artillery-wagon'].subgroup = 'defensive-structure'
data.raw.item.radar.subgroup = 'py-industry'