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

local function make_void_recipe(name, newicons, ing_name, place_result)
    RECIPE {
        name = name,
        type = "recipe",
        localised_name = {"recipe-name.py-void", {"?", {"item-name." .. ing_name}, {"entity-name." .. (place_result or ing_name)}, ""}},
        energy_required = 1.5,
        icons = newicons,
        icon_size = 32,
        hidden = true,
        enabled = true,
        flags = {"hidden"},
        category = "py-incineration",
        ingredients = {{type = "item", name = ing_name, amount = 1}},
        results = {void_result},
        subgroup = "py-void-items",
        ignore_for_dependencies = true
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

--local item_count = 0
local fluid_barrels = {}

for f, _ in pairs(data.raw.fluid) do
    local i = f .. '-barrel'
    if data.raw.item[i] then
        fluid_barrels[i] = true
    end
end


for _, type in pairs(groups) do
    for _, item in pairs(data.raw[type]) do
        if not (item.fuel_value and (item.fuel_category == "chemical" or item.fuel_category == "biomass")) and not fluid_barrels[item.name] then
            --item_count = item_count + 1
            local name = item.name .. "-pyvoid"

            local new_icons
            if item.icons then
                new_icons = table.deepcopy(item.icons)
            else
                new_icons = {{icon = item.icon, icon_size = item.icon_size or 32}}
            end
            new_icons[#new_icons + 1] = {icon = "__pyindustry__/graphics/icons/no.png"}
            make_void_recipe(name, new_icons, item.name, item.place_result)
        end
    end
end

--log(item_count)
