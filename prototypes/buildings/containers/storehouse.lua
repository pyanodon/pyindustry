--[[ Copyright (c) 2017 David-John Miller AKA Anoyomouse
 * Part of the Warehousing mod
--]]

local connectors = require("prototypes/buildings/containers/connectors")

local function get_ingredients(name)
    if name == "passive-provider" then
        return {
            {"py-storehouse-basic", 1},
            {"logistic-chest-passive-provider", 1},
            {"iron-plate", 5},
            {"advanced-circuit", 2}
        }
    elseif name == "active-provider" then
        return {
            {"py-storehouse-basic", 1},
            {"logistic-chest-active-provider", 1},
            {"iron-plate", 5},
            {"advanced-circuit", 2}
        }
    elseif name == "storage" then
        return {
            {"py-storehouse-basic", 1},
            {"logistic-chest-storage", 1},
            {"iron-plate", 5},
            {"advanced-circuit", 2},
            {"steel-chest", 5}
        }
    elseif name == "requester" then
        return {
            {"py-storehouse-basic", 1},
            {"logistic-chest-requester", 1},
            {"iron-plate", 5},
            {"advanced-circuit", 2}
        }
    elseif name == "buffer" then
        return {
            {"py-storehouse-basic", 1},
            {"logistic-chest-buffer", 1},
            {"iron-plate", 5},
            {"advanced-circuit", 2}
        }
    else
        return {
            {"steel-plate", 20},
            {"iron-plate", 40},
            {"stone-brick", 10},
            {"wooden-chest", 5}
        }
    end
end

local function define_storehouse(name, logistics_name)
    local entity_type = logistics_name and "logistic-container" or "container"
    local full_name = "py-storehouse-" .. name

    local recipe =
        RECIPE {
        type = "recipe",
        name = full_name,
        enabled = false,
        ingredients = get_ingredients(logistics_name),
        results = {
            {full_name, 1}
        }
    }

    ITEM {
        type = "item",
        name = full_name,
        icon = "__pyindustry__/graphics/icons/containers/storehouse-" .. name .. ".png",
        icon_size = 32,
        flags = {},
        subgroup = "py-containers-storehouse",
        order = entity_type .. "[" .. full_name .. "]",
        place_result = full_name,
        stack_size = 15
    }

    local entity =
        ENTITY {
        type = entity_type,
        name = full_name,
        icon = "__pyindustry__/graphics/icons/containers/storehouse-" .. name .. ".png",
        icon_size = 32,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 2, result = full_name},
        max_health = 250,
        logistic_slots_count = 30,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        open_sound = {filename = "__base__/sound/machine-open.ogg", volume = 0.85},
        close_sound = {filename = "__base__/sound/machine-close.ogg", volume = 0.75},
        vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
        scale_entity_info_icon = true,
        resistances = {
            {
                type = "fire",
                percent = 90
            }
        },
        collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        fast_replaceable_group = "storehouse",
        inventory_size = 150,
        scale_info_icons = true,
        picture = {
            filename = "__pyindustry__/graphics/entity/storehouse/storehouse-" .. name .. ".png",
            priority = "high",
            width = 102,
            height = 103,
            shift = {0, 0},
            hr_version = {
                filename = "__pyindustry__/graphics/entity/storehouse/hr-storehouse-" .. name .. ".png",
                priority = "extra-high",
                width = 204,
                height = 206,
                shift = {0, 0},
                scale = 0.5
            }
        },
        circuit_wire_max_distance = 9,
        --circuit_connector_sprites = connectors.sprites({0.0, -1.50}),
        circuit_wire_connection_point = connectors.points({-0.11, -1.92})
    }

    if logistics_name then
        recipe:add_unlock("py-warehouse-logistics-research")
        entity.logistic_mode = logistics_name
        if (logistics_name == "storage") then
            entity.inventory_size = 300
            entity.logistic_slots_count = 1
        end
    else
        recipe:add_unlock("py-warehouse-research")
    end
end

define_storehouse("basic", nil)
define_storehouse("passive-provider", "passive-provider")
define_storehouse("storage", "storage")
define_storehouse("active-provider", "active-provider")
define_storehouse("requester", "requester")
define_storehouse("buffer", "buffer")
