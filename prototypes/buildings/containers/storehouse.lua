--[[ Copyright (c) 2017 David-John Miller AKA Anoyomouse
 * Part of the Warehousing mod
--]]

local connectors = require "prototypes/buildings/containers/connectors"

local function get_ingredients(name)
    if name == "passive-provider" then
        return {
            {"py-storehouse-basic",    1},
            {"passive-provider-chest", 1},
            {"iron-plate",             5},
            {"advanced-circuit",       2}
        }
    elseif name == "active-provider" then
        return {
            {"py-storehouse-basic",   1},
            {"active-provider-chest", 1},
            {"iron-plate",            5},
            {"advanced-circuit",      2}
        }
    elseif name == "storage" then
        return {
            {"py-storehouse-basic", 1},
            {"storage-chest",       1},
            {"iron-plate",          5},
            {"advanced-circuit",    2},
            {"steel-chest",         5}
        }
    elseif name == "requester" then
        return {
            {"py-storehouse-basic", 1},
            {"requester-chest",     1},
            {"iron-plate",          5},
            {"advanced-circuit",    2}
        }
    elseif name == "buffer" then
        return {
            {"py-storehouse-basic", 1},
            {"buffer-chest",        1},
            {"iron-plate",          5},
            {"advanced-circuit",    2}
        }
    else
        return {
            {"steel-plate",  20},
            {"iron-plate",   40},
            {"stone-brick",  10},
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
                {type = "item", name = full_name, amount = 1}
            }
        }

    ITEM {
        type = "item",
        name = full_name,
        icon = "__pyindustry__/graphics/icons/containers/storehouse-" .. name .. ".png",
        icon_size = 64,
        flags = {},
        subgroup = "py-containers-storehouse",
        order = entity_type .. "[" .. full_name .. "]",
        place_result = full_name,
        stack_size = 10
    }

    local entity =
        ENTITY {
            type = entity_type,
            name = full_name,
            icon = "__pyindustry__/graphics/icons/containers/storehouse-" .. name .. ".png",
            icon_size = 64,
            flags = {"placeable-neutral", "placeable-player", "player-creation"},
            minable = {mining_time = 2, result = full_name},
            max_health = 250,
            corpse = "big-remnants",
            dying_explosion = "medium-explosion",
            open_sound = {filename = "__base__/sound/machine-open.ogg", volume = 0.85},
            close_sound = {filename = "__base__/sound/machine-close.ogg", volume = 0.75},
            impact_category = "metal-large",
            resistances = {
                {
                    type = "fire",
                    percent = 90
                }
            },
            collision_box = {{-1.8, -1.8}, {1.8, 1.8}},
            selection_box = {{-2.0, -2.0}, {2.0, 2.0}},
            fast_replaceable_group = "storehouse",
            inventory_size = 150,
            inventory_type = "with_filters_and_bar",
            picture = {
                filename = "__pyindustry__/graphics/entity/storehouse/storehouse-" .. name .. ".png",
                priority = "high",
                width = 132,
                height = 172,
                shift = util.by_pixel(2, -12),
            },
            circuit_wire_max_distance = 9,
            --circuit_connector_sprites = connectors.sprites({0.0, -1.50}),
            circuit_connector = { points = connectors.points{-0.11, -1.92} },
        }

    if logistics_name then
        recipe:add_unlock("py-warehouse-logistics-research")
        entity.logistic_mode = logistics_name
        if (logistics_name == "storage") then
            entity.inventory_size = 150
            entity.max_logistic_slots = 1
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
