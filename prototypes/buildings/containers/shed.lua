local Technology = require("stdlib/data/technology")

local function get_ingredients(name)
    local ingredients
    if name == "passive-provider" then
        ingredients = {
            {"py-shed-basic", 1},
            {"logistic-chest-passive-provider", 1},
            {"iron-plate", 5},
            {"advanced-circuit", 2}
        }
    elseif name == "active-provider" then
        ingredients = {
            {"py-shed-basic", 1},
            {"logistic-chest-active-provider", 1},
            {"iron-plate", 5},
            {"advanced-circuit", 2}
        }
    elseif name == "storage" then
        ingredients = {
            {"py-shed-basic", 1},
            {"logistic-chest-storage", 1},
            {"iron-plate", 5},
            {"advanced-circuit", 2},
            {"steel-chest", 5}
        }
    elseif name == "requester" then
        ingredients = {
            {"py-shed-basic", 1},
            {"logistic-chest-requester", 1},
            {"iron-plate", 5},
            {"advanced-circuit", 2}
        }
    elseif name == "buffer" then
        ingredients = {
            {"py-shed-basic", 1},
            {"logistic-chest-buffer", 1},
            {"iron-plate", 5},
            {"advanced-circuit", 2}
        }
    else
        ingredients = {
            {"steel-plate", 20},
            {"iron-plate", 40},
            {"stone-brick", 10},
            {"wooden-chest", 5}
        }
    end
    return ingredients
end

local function define_shed(name, logistics_name)
    local entity_type = logistics_name and "logistic-container" or "container"
    local full_name = "py-shed-" .. name

    local recipe = {
        type = "recipe",
        name = full_name,
        enabled = "false",
        ingredients = get_ingredients(logistics_name),
        result = full_name
    }

    local item = {
        type = "item",
        name = full_name,
        icon = "__pyindustry__/graphics/icons/containers/shed-" .. name .. ".png",
        flags = {"goes-to-quickbar"},
        subgroup = "py-containers-shed",
        order = entity_type .. "[" .. full_name .. "]",
        place_result = full_name,
        stack_size = 15
    }
	local entity =
	{
        type = entity_type,
		name = full_name,
		icon = "__pyindustry__/graphics/icons/containers/shed-" .. name .. ".png",
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 2, result = full_name},
		max_health = 250,
        logistic_slots_count = 12,
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
		close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
		vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		scale_entity_info_icon = true,
		resistances =
		{
			{
				type = "fire",
				percent = 90
			}
		},
		collision_box = {{-0.8, -0.8}, {0.8, 0.8}},
		selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
		fast_replaceable_group = "shed",
		inventory_size = 75,
		scale_info_icons = true,
		picture =
		{
			filename = "__pyindustry__/graphics/entity/shed/shed-" .. name .. ".png",
			priority = "high",
			width = 129,
			height = 100,
			shift = {0.421875, 0},
			scale = .66666,
		},
		-- circuit_connector_sprites = nil
		circuit_wire_max_distance = 9,
		circuit_wire_connection_point =
		{
			shadow =
			{
				red = {0.26, -0.6},
				green = {0.36, -0.6}
			},
			wire =
			{
				red = {-0.16, -0.9},
				green = {0.16, -0.9}
			}
		},
	};

	if logistics_name then
		entity.minable.hardness = 0.2;
		entity.logistic_mode = logistics_name;
		Technology("py-warehouse-logistics-research"):add_effect(recipe)
		if (logistics_name == "storage") then
			entity.inventory_size = 150;
		end
	else
		Technology("py-warehouse-research"):add_effect(recipe)
	end
	data:extend{recipe, item, entity}
end

define_shed("basic", nil)
define_shed("passive-provider", "passive-provider")
define_shed("storage", "storage")
define_shed("active-provider", "active-provider")
define_shed("requester", "requester")
if data.raw.item["logistic-chest-buffer"] then
	define_shed("buffer", "buffer")
end

