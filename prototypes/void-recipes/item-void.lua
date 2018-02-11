-- Courtesy of "pyindustry_burner_fix", by "magu5026",

local function make_void_recipe(name, newicons, ing_name)
    Recipe {
        name = name,
        type = "recipe",
        localised_name = {"", "Void ", {"item-name." .. ing_name}},
        icons = newicons,
        icon_size = 32,
        hidden = true,
        enabled = true,
        flags = {"hidden"},
        category = "py-incineration",
        ingredients = {{type = "item", name = ing_name, amount = 1}},
        results = {{type = "fluid", name = "water", amount = 0}},
        subgroup = "py-void-items"
    }
end

for _, type in pairs(Item.item_types) do
    for _, item in pairs(data.raw[type]) do
        local name = item.name .. "-pyvoid"

        local new_icons
        if item.icons then
            new_icons = table.deepcopy(item.icons)
        else
            new_icons = {{icon = item.icon}}
        end
        new_icons[#new_icons + 1] = {icon = "__pyindustry__/graphics/icons/no.png"}
        make_void_recipe(name, new_icons, item.name)
    end
end
