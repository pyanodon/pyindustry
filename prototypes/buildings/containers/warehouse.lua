--[[ Copyright (c) 2017 David-John Miller AKA Anoyomouse
 * Part of the Warehousing mod
--]]

local connectors = require "prototypes/buildings/containers/connectors"

local function get_trash_slots(name)
    if name == "requester" or name == "buffer" then
        return 20
    else
        return 0
    end
end

local function get_ingredients(name)
    if name == "passive-provider" then
        return {
            {type = "item", name = "py-warehouse-basic",     amount = 1},
            {type = "item", name = "passive-provider-chest", amount = 1},
            {type = "item", name = "iron-plate",             amount = 20},
            {type = "item", name = "advanced-circuit",       amount = 5}
        }
    elseif name == "active-provider" then
        return {
            {type = "item", name = "py-warehouse-basic",    amount = 1},
            {type = "item", name = "active-provider-chest", amount = 1},
            {type = "item", name = "iron-plate",            amount = 5},
            {type = "item", name = "advanced-circuit",      amount = 2}
        }
    elseif name == "storage" then
        return {
            {type = "item", name = "py-warehouse-basic", amount = 1},
            {type = "item", name = "storage-chest",      amount = 1},
            {type = "item", name = "iron-plate",         amount = 20},
            {type = "item", name = "advanced-circuit",   amount = 5},
            {type = "item", name = "steel-chest",        amount = 15}
        }
    elseif name == "requester" then
        return {
            {type = "item", name = "py-warehouse-basic", amount = 1},
            {type = "item", name = "requester-chest",    amount = 1},
            {type = "item", name = "iron-plate",         amount = 20},
            {type = "item", name = "advanced-circuit",   amount = 5}
        }
    elseif name == "buffer" then
        return {
            {type = "item", name = "py-warehouse-basic", amount = 1},
            {type = "item", name = "buffer-chest",       amount = 1},
            {type = "item", name = "iron-plate",         amount = 20},
            {type = "item", name = "advanced-circuit",   amount = 5}
        }
    else
        return {
            {type = "item", name = "steel-plate",  amount = 60},
            {type = "item", name = "iron-plate",   amount = 100},
            {type = "item", name = "stone-brick",  amount = 25},
            {type = "item", name = "wooden-chest", amount = 10}
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
        icon = "__pyindustrygraphics__/graphics/icons/containers/warehouse-" .. name .. ".png",
        icon_size = 64,
        flags = {},
        subgroup = "py-containers-warehouse",
        order = entity_type .. "[" .. full_name .. "]",
        place_result = full_name,
        stack_size = 10
    }

    local entity =
        ENTITY {
            type                      = entity_type,
            name                      = full_name,
            icon                      = "__pyindustrygraphics__/graphics/icons/containers/warehouse-" .. name .. ".png",
            icon_size                 = 64,
            trash_inventory_size      = get_trash_slots(logistics_name),
            flags                     = {"placeable-neutral", "placeable-player", "player-creation"},
            minable                   = {mining_time = 2, result = full_name},
            max_health                = 350,
            corpse                    = "big-remnants",
            dying_explosion           = "medium-explosion",
            open_sound                = {filename = "__base__/sound/machine-open.ogg", volume = 0.85},
            close_sound               = {filename = "__base__/sound/machine-close.ogg", volume = 0.75},
            impact_category           = "metal-large",
            resistances               = {
                {
                    type = "fire",
                    percent = 90
                }
            },
            collision_box             = {{-2.7, -2.7}, {2.7, 2.7}},
            selection_box             = {{-3.0, -3.0}, {3.0, 3.0}},
            fast_replaceable_group    = "warehouse",
            inventory_size            = 450,
            inventory_type            = "with_filters_and_bar",
            picture                   = {
                filename = "__pyindustrygraphics__/graphics/entity/warehouse/warehouse-" .. name .. ".png",
                priority = "high",
                width = 224,
                height = 224,
                shift = util.by_pixel(10, -16),
            },
            circuit_wire_max_distance = 9,
            circuit_connector         = circuit_connector_definitions["py-warehouse"],
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
