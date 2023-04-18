data:extend{{
	type = 'generator-equipment',
	name = 'portable-gasolene-generator',
	power = '180kW',
	burner = {
		type = 'burner',
		emissions_per_minute = 6,
		fuel_inventory_size = 2,
		burnt_inventory_size = 2,
		fuel_category = 'jerry'
	},
	energy_source = {
		type = 'electric',
		usage_priority = 'secondary-output'
	},
	categories = {'armor'},
	shape = {type = 'full', width = 2, height = 2},
	sprite = {
		width = 64,
		height = 64,
		filename = '__pyindustry__/graphics/icons/gasolene-burner.png'
	}
}}

ITEM {
    type = 'item',
    name = 'portable-gasolene-generator',
    icon = '__pyindustry__/graphics/icons/gasolene-burner.png',
    icon_size = 64,
    subgroup = 'py-generator-equipment',
    order = 'a[energy-source]-a[portable-gasolene-generator]',
    stack_size = 10,
	placed_as_equipment_result = 'portable-gasolene-generator',
	localised_description = {'equipment-description.portable-gasolene-generator'}
}

RECIPE {
    type = 'recipe',
    name = 'portable-gasolene-generator',
    energy_required = 10,
    category = "crafting",
    enabled = false,
    ingredients = {
        {'engine-unit', 4},
        {'boiler', 1},
        {'steel-plate', 20},
        {'iron-gear-wheel', 14},
		{'small-electric-pole', 1}
    },
    results = {
        {'portable-gasolene-generator', 1}
    }
}:add_unlock('personal-roboport-equipment')

data.raw.recipe['personal-roboport-equipment'].ingredients = {
	{'iron-gear-wheel', 45},
	{'steel-plate', 20},
	{'electronic-circuit', 10},
	{'battery', 10},
}

data.raw.technology['personal-roboport-equipment'].prerequisites = {'construction-robotics'}
data.raw.technology['personal-roboport-equipment'].unit.count = 300
--data.raw.technology['personal-roboport-equipment'].unit.ingredients = {{"automation-science-pack",1}, {"logistic-science-pack",1}}