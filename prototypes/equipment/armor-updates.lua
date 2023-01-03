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
data.raw.technology['battery-mk2-equipment'].hidden = true
data.raw.technology['battery-mk2-equipment'].enabled = false
data.raw.recipe['battery-mk2-equipment'].hidden = true
data.raw.item['battery-mk2-equipment'].hidden = true
data.raw.item['battery-mk2-equipment'].placed_as_equipment_result = nil

data:extend{{
	type = 'generator-equipment',
	name = 'personal-fusion-cell',
	power = '1.35MW',
	energy_source = {
		type = 'electric',
		usage_priority = 'secondary-output'
	},
	categories = {'armor'},
	shape = {
		type = 'manual',
		width = 3,
		height = 3,
		points = {
				    {1, 0}, {2, 0},
			{0, 1}, {1, 1}, {2, 1},
			{0, 2}, {1, 2}
		}
	},
	sprite = {
		width = 64,
		height = 64,
		filename = '__pyindustry__/graphics/icons/fusion-cell.png',
		scale = 1.4
	},
	take_result = 'fusion-reactor-equipment',
	localised_name = {'item-name.personal-fusion-cell'},
	localised_description = {'item-description.personal-fusion-cell'}
}}

data.raw.item['fusion-reactor-equipment'].placed_as_equipment_result = 'personal-fusion-cell'
data.raw.item['fusion-reactor-equipment'].icon = '__pyindustry__/graphics/icons/fusion-cell.png'
data.raw.item['fusion-reactor-equipment'].icon_size = 64
data.raw.item['fusion-reactor-equipment'].icon_mipmaps = nil
data.raw.item['fusion-reactor-equipment'].localised_name = {'item-name.personal-fusion-cell'}
data.raw.item['fusion-reactor-equipment'].localised_description = {'item-description.personal-fusion-cell'}

data.raw['solar-panel-equipment']['solar-panel-equipment'].power = '100kW'