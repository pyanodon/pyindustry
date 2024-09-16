data:extend{{
	name = 'light-armor-equipment-grid',
	type = 'equipment-grid',
	height = 4,
	width = 2,
	equipment_categories = {'armor'}
}}

data:extend{{
	name = 'heavy-armor-equipment-grid',
	type = 'equipment-grid',
	height = 4,
	width = 4,
	equipment_categories = {'armor'}
}}

data.raw.armor['light-armor'].equipment_grid = 'light-armor-equipment-grid'
data.raw.armor['heavy-armor'].equipment_grid = 'heavy-armor-equipment-grid'

data.raw['equipment-grid']['small-equipment-grid'].width = 6
data.raw['equipment-grid']['small-equipment-grid'].height = 6
data.raw['equipment-grid']['medium-equipment-grid'].width = 8
data.raw['equipment-grid']['medium-equipment-grid'].height = 8

data.raw.armor['light-armor'].inventory_size_bonus = 20
data.raw.armor['heavy-armor'].inventory_size_bonus = 40
data.raw.armor['modular-armor'].inventory_size_bonus = 60
data.raw.armor['power-armor'].inventory_size_bonus = 80
data.raw.armor['power-armor-mk2'].inventory_size_bonus = 100

data.raw.technology['battery-equipment'].hidden = true
data.raw.technology['battery-equipment'].enabled = false
data.raw.recipe['battery-equipment'].hidden = true
data.raw.item['battery-equipment'].hidden = true
data.raw.item['battery-equipment'].placed_as_equipment_result = nil
data.raw.item['battery-equipment'].localised_name = {'equipment-name.battery-equipment'}
data.raw.technology['battery-mk2-equipment'].hidden = true
data.raw.technology['battery-mk2-equipment'].enabled = false
data.raw.recipe['battery-mk2-equipment'].hidden = true
data.raw.item['battery-mk2-equipment'].hidden = true
data.raw.item['battery-mk2-equipment'].placed_as_equipment_result = nil
data.raw.item['battery-mk2-equipment'].localised_name = {'equipment-name.battery-mk2-equipment'}

data:extend{{
	name = 'personal-fusion-cell',
	type = 'fuel-category'
}}

ITEM {
    type = 'item',
    name = 'personal-fusion-cell',
    icon = '__pyindustry__/graphics/icons/fusion-cell.png',
    icon_size = 64,
    subgroup = 'py-generator-equipment',
    order = 'a[energy-source]-cb[personal-fusion-cell]',
    stack_size = 10,
	burnt_result = 'personal-fusion-cell-used',
	fuel_value = '1GJ',
	fuel_category = 'personal-fusion-cell'
}

RECIPE {
	type = 'recipe',
    name = 'personal-fusion-cell',
    energy_required = 10,
    category = "crafting-with-fluid",
    enabled = false,
    ingredients = {
        {type = "item", name = 'barrel', amount = 1},
		{type = 'fluid', name = 'water', amount = 100}
    },
    results = {
        {type = "item", name = 'personal-fusion-cell', amount = 1}
    }
}:add_unlock('fusion-reactor-equipment')

ITEM {
    type = 'item',
    name = 'personal-fusion-cell-used',
    icon = '__pyindustry__/graphics/icons/empty-fusion-cell.png',
    icon_size = 64,
    subgroup = 'py-generator-equipment',
    order = 'a[energy-source]-cb[personal-fusion-cell-used]',
    stack_size = 10,
}

RECIPE {
	type = 'recipe',
    name = 'personal-fusion-cell-refuel',
    energy_required = 10,
    category = "crafting-with-fluid",
    enabled = false,
    ingredients = {
        {'personal-fusion-cell-used', 1},
		{type = 'fluid', name = 'water', amount = 100}
    },
    results = {
        {'personal-fusion-cell', 1}
    }
}:add_unlock('fusion-reactor-equipment')

data.raw.item['solar-panel-equipment'].subgroup = 'py-generator-equipment'
data.raw.item['solar-panel-equipment'].order = 'a[energy-source]-b[solar-panel-equipment]'

data.raw.item['fusion-reactor-equipment'].subgroup = 'py-generator-equipment'
data.raw.item['fusion-reactor-equipment'].order = 'a[energy-source]-c[fusion-reactor-equipment]'
data.raw['generator-equipment']['fusion-reactor-equipment'].power = '1.35MW'
data.raw['generator-equipment']['fusion-reactor-equipment'].burner = {
	type = 'burner',
	fuel_inventory_size = 4,
	burnt_inventory_size = 4,
	fuel_categories = {'personal-fusion-cell'}
}
data.raw['generator-equipment']['fusion-reactor-equipment'].shape = {
    type = 'manual',
    width = 4,
    height = 4,
    points = {
                {1, 0}, {2, 0},
        {0, 1}, {1, 1}, {2, 1}, {3, 1},
        {0, 2}, {1, 2}, {2, 2}, {3, 2},
        {0, 3}, {1, 3}, {2, 3}, {3, 3}
    }
}

data.raw['solar-panel-equipment']['solar-panel-equipment'].power = '90kW'