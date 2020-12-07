local function make_fluid_recipe(name, locale, icons, category, ing, subgroup)
    RECIPE {
        name = name,
        type = "recipe",
        localised_name = locale,
        hidden = true,
        enabled = true,
        flags = {"hidden"},
        category = category,
        energy_required = 1,
        ingredients = {
            ing
        },
        results = {
            {type = "fluid", name = "water", amount = 0}
        },
        icons = icons,
        icon_size = 32,
        subgroup = subgroup or "py-void"
    }
end

--[[
local fluids = 0
local fluid_count = 0
local gas_count = 0
]]--

for _, fluid in pairs(data.raw.fluid) do
    --fluids = fluids + 1
    local name
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
        --fluid_count = fluid_count + 1
        --Make sinkhole
        name = fluid.name .. '-pyvoid-fluid'
        local locale = {"", "Void ", {"fluid-name." .. fluid.name}}
        local ing = {type = "fluid", name = fluid.name, maximum_temperature = fluid.gas_temperature, amount = 20000}
        make_fluid_recipe(name, locale, icons, "py-runoff", ing, "py-void-liquid")
    end
	if fluid.name ~= "steam" then
        if fluid.gas_temperature and (fluid.default_temperature or 15) >= fluid.gas_temperature then
            --gas_count = gas_count + 1
			--Make venting
			name = fluid.name .. '-pyvoid-gas'
			local locale = {"", "Void ", {"fluid-name." .. fluid.name}}
			local ing = {type = "fluid", name = fluid.name, minimum_temperature = fluid.gas_temperature, amount = 20000}
			make_fluid_recipe(name, locale, icons, "py-venting", ing, "py-void-gas")
		end
	end
end

--[[
log(fluids)
log(fluid_count)
log(gas_count)
]]--
