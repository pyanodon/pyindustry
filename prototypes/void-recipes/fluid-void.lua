local ignored = settings.startup["py-show-voiding-in-stats"].value and 0 or 20000

local function make_fluid_recipe(name, locale, icons, categories, fluid, subgroup)
    RECIPE {
        name = name,
        type = "recipe",
        localised_name = locale,
        hidden = true,
        hidden_in_factoriopedia = false,
        enabled = true,
        categories = categories,
        energy_required = 1,
        ingredients = {{type = "fluid", name = fluid, amount = 20000, ignored_by_stats = ignored}},
        results = {},
        icons = icons,
        icon_size = 32,
        subgroup = subgroup or "py-void",
        autotech_ignore = true
    }
end

for _, fluid in pairs(data.raw.fluid) do
    if fluid.hidden then goto continue end
    if fluid.name == "fluid-unknown" or fluid.subgroup == "parameters" then goto continue end

    local name
    local icons

    icons = fluid.icons and table.deepcopy(fluid.icons) or {{icon = fluid.icon, icon_size = fluid.icon_size or 64}}
    icons[#icons + 1] = {icon = "__pyindustrygraphics__/graphics/icons/no.png", icon_size = 32}

    if (fluid.default_temperature or 15) < (fluid.gas_temperature or 999999999999) then
        -- Make sinkhole
        name = fluid.name .. "-pyvoid-fluid"
        local locale = {"", "Void ", {"fluid-name." .. fluid.name}}
        make_fluid_recipe(name, locale, icons, {"py-runoff"}, fluid.name, "py-void-liquid")
    end

    if fluid.gas_temperature and (fluid.default_temperature or 15) >= fluid.gas_temperature then
        -- Make venting
        name = fluid.name .. "-pyvoid-gas"
        local locale = {"", "Void ", {"fluid-name." .. fluid.name}}
        make_fluid_recipe(name, locale, icons, {"py-venting"}, fluid.name, "py-void-gas")
    end

    ::continue::
end
