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