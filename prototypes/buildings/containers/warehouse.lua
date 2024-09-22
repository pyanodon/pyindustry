--[[ Copyright (c) 2017 David-John Miller AKA Anoyomouse
 * Part of the Warehousing mod
--]]

local connectors = require 'prototypes/buildings/containers/connectors'

local function get_ingredients(name)
    if name == "passive-provider" then
        return {
            {"py-warehouse-basic", 1},
            {"passive-provider-chest", 1},
            {"iron-plate", 20},
            {"advanced-circuit", 5}
        }
    elseif name == "active-provider" then
        return {
            {"py-warehouse-basic", 1},
            {"active-provider-chest", 1},
            {"iron-plate", 5},
            {"advanced-circuit", 2}
        }
    elseif name == "storage" then
        return {
            {"py-warehouse-basic", 1},
            {"storage-chest", 1},
            {"iron-plate", 20},
            {"advanced-circuit", 5},
            {"steel-chest", 15}
        }
    elseif name == "requester" then
        return {
            {"py-warehouse-basic", 1},
            {"requester-chest", 1},
            {"iron-plate", 20},
            {"advanced-circuit", 5}
        }
    elseif name == "buffer" then
        return {
            {"py-warehouse-basic", 1},
            {"buffer-chest", 1},
            {"iron-plate", 20},
            {"advanced-circuit", 5}
        }
    else
        return {
            {"steel-plate", 60},
            {"iron-plate", 100},
            {"stone-brick", 25},
            {"wooden-chest", 10}
        }
    end
end

local function define_warehouse(name, logistics_name)
    local entity_type = logistics_name and "logistic-container" or "container"
    local full_name = "py-warehouse-" .. name

    local recipe =
        RECIPE {
        type = "recipe",
        name = full_name,
        enabled = false,
        ingredients = get_ingredients(logistics_name),
        results = {
            {type = "item", name = full_name, amount = 1}
        }
    }

    ITEM {
        type = "item",
        name = full_name,
        icon = "__pyindustry__/graphics/icons/containers/warehouse-" .. name .. ".png",
        icon_size = 64,
        flags = {},
        subgroup = "py-containers-warehouse",
        order = entity_type .. "[" .. full_name .. "]",
        place_result = full_name,
        stack_size = 10
    }

    local entity =
        ENTITY {
        type = entity_type,
        name = full_name,
        icon = "__pyindustry__/graphics/icons/containers/warehouse-" .. name .. ".png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 2, result = full_name},
        max_health = 350,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        open_sound = {filename = "__base__/sound/machine-open.ogg", volume = 0.85},
        close_sound = {filename = "__base__/sound/machine-close.ogg", volume = 0.75},
        vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
        resistances = {
            {
                type = "fire",
                percent = 90
            }
        },
        collision_box = {{-2.7, -2.7}, {2.7, 2.7}},
        selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
        fast_replaceable_group = "warehouse",
        inventory_size = 450,
        inventory_type = "with_filters_and_bar",
        picture = {
            filename = "__pyindustry__/graphics/entity/warehouse/warehouse-" .. name .. ".png",
            priority = "high",
            width = 224,
            height = 224,
            shift = util.by_pixel(10, -16),
        },
        circuit_wire_max_distance = 9,
       -- circuit_connector_sprites = connectors.sprites({0, -2.4}),
        circuit_wire_connection_point = connectors.points({-0.11, -2.82})
    }

    if logistics_name then
        entity.max_health = 450
        entity.logistic_mode = logistics_name
        recipe:add_unlock("py-warehouse-logistics-research")
        if (logistics_name == "storage") then
            entity.inventory_size = 450
            entity.max_logistic_slots = 1
        end
    else
        recipe:add_unlock("py-warehouse-research")
    end
end

define_warehouse("basic", nil)
define_warehouse("passive-provider", "passive-provider")
define_warehouse("storage", "storage")
define_warehouse("active-provider", "active-provider")
define_warehouse("requester", "requester")
define_warehouse("buffer", "buffer")
