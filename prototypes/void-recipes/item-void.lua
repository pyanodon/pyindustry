-- Courtesy of "pyindustry_burner_fix", by "magu5026",

local void_result = {
    type = "item",
    name = ITEM("ash"):is_valid() and "ash" or ITEM("coal"):is_valid() and "coal" or nil,
    amount_min = 1,
    amount_max = 1,
    probability = 0.20
}
if not void_result.name then
    void_result = {type = "fluid", name = "water", amount = 0}
end

local function make_void_recipe(name, newicons, ing_name)
    RECIPE {
        name = name,
        type = "recipe",
        localised_name = {"", "Void ", {"item-name." .. ing_name}},
        energy_required = 1.5,
        icons = newicons,
        icon_size = 32,
        hidden = true,
        enabled = true,
        flags = {"hidden"},
        category = "py-incineration",
        ingredients = {{type = "item", name = ing_name, amount = 1}},
        results = {void_result},
        subgroup = "py-void-items"
    }
end

local groups = {
    "ammo",
    "armor",
    "capsule",
    "gun",
    "item-with-entity-data",
    "item-with-inventory",
    "item-with-label",
    "item-with-tags",
    "item",
    "mining-tool",
    "module",
    "rail-planner",
    "repair-tool",
    "tool",
}

for _, type in pairs(groups) do
    for _, item in pairs(data.raw[type]) do
        if not item.fuel_value then
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
end
