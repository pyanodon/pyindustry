local function make_fluid_recipe(name, locale, icons, category, ing)
    Recipe {
        name = name,
        type = "recipe",
        localised_name = locale,
        hidden = true,
        enabled = true,
        flags = {"hidden"},
        category = category,
        ingredients = {
            ing
        },
        results = {
            {type = "fluid", name = "water", amount = 0}
        },
        icons = icons,
        icon_size = 32,
        subgroup = "py-void"
    }
end

for _, fluid in pairs(data.raw.fluid) do
    local name = fluid.name .. "-pyvoid" .. (fluid.gas_temperature and "-gas" or "-fluid")

    local icons
    if fluid.icons then
        icons = table.deepcopy(fluid.icons)
    else
        icons = {
            {icon = fluid.icon, icon_size = fluid.icon_size or 32}
        }
    end
    icons[#icons + 1] = {icon = "__pyindustry__/graphics/icons/no.png", icon_size = 32}

    if (fluid.default_temperature or 15) < (fluid.gas_temperature or 999999999999) then
        --Make sinkhole
        local locale = {"", "Void ", {"fluid-name." .. fluid.name}}
        local ing = {type = "fluid", name = fluid.name, maximum_temperature = fluid.gas_temperature, amount = 10}
        make_fluid_recipe(name, locale, icons, "py-runoff", ing)
    end

    if fluid.gas_temperature then
        --Make venting
        local locale = {"", "Void ", {"fluid-name." .. fluid.name}}
        local ing = {type = "fluid", name = fluid.name, minimum_temperature = fluid.gas_temperature, amount = 10}
        make_fluid_recipe(name, locale, icons, "py-venting", ing)
    end
end
