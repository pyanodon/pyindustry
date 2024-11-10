--[[ Copyright (c) 2017 David-John Miller AKA Anoyomouse
 * Part of the Warehousing mod
--]]

local connectors = require "prototypes/buildings/containers/connectors"

local function get_ingredients(name)
    if name == "passive-provider" then
        return {
            {"py-deposit-basic",       1},
            {"passive-provider-chest", 1},
            {"iron-plate",             20},
            {"advanced-circuit",       5}
        }
    elseif name == "active-provider" then
        return {
            {"py-deposit-basic",      1},
            {"active-provider-chest", 1},
            {"iron-plate",            5},
            {"advanced-circuit",      2}
        }
    elseif name == "storage" then
        return {
            {"py-deposit-basic", 1},
            {"storage-chest",    1},
            {"iron-plate",       20},
            {"advanced-circuit", 5},
            {"steel-chest",      15}
        }
    elseif name == "requester" then
        return {
            {"py-deposit-basic", 1},
            {"requester-chest",  1},
            {"iron-plate",       20},
            {"advanced-circuit", 5}
        }
    elseif name == "buffer" then
        return {
            {"py-deposit-basic", 1},
            {"buffer-chest",     1},
            {"iron-plate",       20},
            {"advanced-circuit", 5}
        }
    else
        return {
            {"steel-plate",  60},
            {"iron-plate",   100},
            {"stone-brick",  25},
            {"wooden-chest", 10}
        }
    end
end

local function define_deposit(name, logistics_name)
    local entity_type = logistics_name and "logistic-container" or "container"
    local full_name = "py-deposit-" .. name

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
        icon = "__pyindustry__/graphics/icons/containers/deposit-" .. name .. ".png",
        icon_size = 64,
        flags = {},
        subgroup = "py-containers-deposit",
        order = entity_type .. "[" .. full_name .. "]",
        place_result = full_name,
        stack_size = 10
    }

    local entity =
        ENTITY {
            type = entity_type,
            name = full_name,
            icon = "__pyindustry__/graphics/icons/containers/deposit-" .. name .. ".png",
            icon_size = 64,
            flags = {"placeable-neutral", "placeable-player", "player-creation"},
            minable = {mining_time = 2, result = full_name},
            max_health = 350,
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
            collision_box = {{-4.2, -4.2}, {4.2, 4.2}},
            selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
            fast_replaceable_group = "deposit",
            inventory_size = 800,
            inventory_type = "with_filters_and_bar",
            picture = {
                filename = "__pyindustry__/graphics/entity/deposit/deposit-" .. name .. ".png",
                priority = "high",
                width = 320,
                height = 352,
                shift = util.by_pixel(16, -32),
            },
            circuit_wire_max_distance = 9,
            -- circuit_connector_sprites = connectors.sprites({0, -2.4}),
            circuit_connector = { points = connectors.points{-0.11, -2.82} },
        }

    if logistics_name then
        entity.max_health = 450
        entity.logistic_mode = logistics_name
        recipe:add_unlock("py-warehouse-logistics-research")
        if (logistics_name == "storage") then
            entity.inventory_size = 800
            entity.max_logistic_slots = 1
        end
    else
        recipe:add_unlock("py-warehouse-research")
    end
end

define_deposit("basic", nil)
define_deposit("passive-provider", "passive-provider")
define_deposit("storage", "storage")
define_deposit("active-provider", "active-provider")
define_deposit("requester", "requester")
define_deposit("buffer", "buffer")
