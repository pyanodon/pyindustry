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