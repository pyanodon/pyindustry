--[[ Copyright (c) 2017 David-John Miller AKA Anoyomouse
 * Part of the Warehousing mod
--]]
local Technology = require("stdlib/data/technology")
local connectors = require("prototypes/buildings/containers/connectors")

local function get_ingredients(name)
    local ingredients
    if name == "passive-provider" then
        ingredients = {
            {"py-warehouse-basic", 1},
            {"logistic-chest-passive-provider", 1},
            {"iron-plate", 20},
            {"advanced-circuit", 5}
        }
    elseif name == "active-provider" then
        ingredients = {
            {"py-warehouse-basic", 1},
            {"logistic-chest-active-provider", 1},
            {"iron-plate", 5},
            {"advanced-circuit", 2}
        }
    elseif name == "storage" then
        ingredients = {
            {"py-warehouse-basic", 1},
            {"logistic-chest-storage", 1},
            {"iron-plate", 20},
            {"advanced-circuit", 5},
            {"steel-chest", 15}
        }
    elseif name == "requester" then
        ingredients = {
            {"py-warehouse-basic", 1},
            {"logistic-chest-requester", 1},
            {"iron-plate", 20},
            {"advanced-circuit", 5}
        }
    elseif name == "buffer" then
        ingredients = {
            {"py-warehouse-basic", 1},
            {"logistic-chest-requester", 1},
            {"iron-plate", 20},
            {"advanced-circuit", 5}
        }
    else
        ingredients = {
            {"steel-plate", 60},
            {"iron-plate", 100},
            {"stone-brick", 25},
            {"wooden-chest", 10}
        }
    end
    return ingredients
end

local function define_warehouse(name, logistics_name)
    local entity_type = logistics_name and "logistic-container" or "container"
    local full_name = "py-warehouse-" .. name

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
        icon = "__pyindustry__/graphics/icons/containers/warehouse-" .. name .. ".png",
        flags = {"goes-to-quickbar"},
        subgroup = "py-containers-warehouse",
        order = entity_type .. "[" .. full_name .. "]",
        place_result = full_name,
        stack_size = 15
    }

    local entity = {
        type = entity_type,
        name = full_name,
        icon = "__pyindustry__/graphics/icons/containers/warehouse-" .. name .. ".png",
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 2, result = full_name},
        max_health = 350,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        open_sound = {filename = "__base__/sound/machine-open.ogg", volume = 0.85},
        close_sound = {filename = "__base__/sound/machine-close.ogg", volume = 0.75},
        vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
        resistances = {
            {
                type = "fire",
                percent = 90
            }
        },
        collision_box = {{-2.7, -2.7}, {2.7, 2.7}},
        selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
        drawing_box = {{-3.0, -3.0}, {3.0, 3.0}},
        fast_replaceable_group = "warehouse",
        inventory_size = 800,
        scale_info_icons = true,
        picture = {
            filename = "__pyindustry__/graphics/entity/warehouse/warehouse-" .. name .. ".png",
            priority = "high",
            width = 193,
            height = 192,
            shift = {0, 0},
            hr_version = {
                filename = "__pyindustry__/graphics/entity/warehouse/hr-warehouse-" .. name .. ".png",
                priority = "extra-high",
                width = 386,
                height = 383,
                shift = {0, 0},
                scale = 0.5
            }
        },
        circuit_wire_max_distance = 9,
        circuit_connector_sprites = connectors.sprites({0, -2.4}),
        circuit_wire_connection_point = connectors.points({-0.11, -2.82})
    }

    if logistics_name then
        entity.max_health = 450
        entity.minable.hardness = 0.2
        entity.logistic_mode = logistics_name
        Technology("py-warehouse-logistics-research"):add_effect(recipe)
        if (logistics_name == "storage") then
            entity.inventory_size = 2000
        elseif (logistics_name == "buffer" or logistics_name == "requester") then
            entity.logistic_slots_count = 12
        end
    else
        Technology("py-warehouse-research"):add_effect(recipe)
    end
    data:extend {recipe, item, entity}
end

define_warehouse("basic", nil)
define_warehouse("passive-provider", "passive-provider")
define_warehouse("storage", "storage")
define_warehouse("active-provider", "active-provider")
define_warehouse("requester", "requester")
if data.raw.item["logistic-chest-buffer"] then
    define_warehouse("buffer", "buffer")
end
