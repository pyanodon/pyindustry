--[[ Original Copyright (c) 2017 David-John Miller AKA Anoyomouse
 * Part of the Warehousing mod
--]]

local connectors = require("prototypes/buildings/containers/connectors")

local function get_ingredients(name)
    if name == "passive-provider" then
        return {
            {"py-shed-basic", 1},
            {"logistic-chest-passive-provider", 1},
            {"iron-plate", 5},
            {"advanced-circuit", 2}
        }
    elseif name == "active-provider" then
        return {
            {"py-shed-basic", 1},
            {"logistic-chest-active-provider", 1},
            {"iron-plate", 5},
            {"advanced-circuit", 2}
        }
    elseif name == "storage" then
        return {
            {"py-shed-basic", 1},
            {"logistic-chest-storage", 1},
            {"iron-plate", 5},
            {"advanced-circuit", 2},
            {"steel-chest", 5}
        }
    elseif name == "requester" then
        return {
            {"py-shed-basic", 1},
            {"logistic-chest-requester", 1},
            {"iron-plate", 5},
            {"advanced-circuit", 2}
        }
    elseif name == "buffer" then
        return {
            {"py-shed-basic", 1},
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

local function define_shed(name, logistics_name)
    local entity_type = logistics_name and "logistic-container" or "container"
    local full_name = "py-shed-" .. name

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
        icon = "__pyindustry__/graphics/icons/containers/shed-" .. name .. ".png",
        icon_size = 32,
        flags = {},
        subgroup = "py-containers-shed",
        order = entity_type .. "[" .. full_name .. "]",
        place_result = full_name,
        stack_size = 15
    }

    local entity =
        ENTITY {
        type = entity_type,
        name = full_name,
        icon = "__pyindustry__/graphics/icons/containers/shed-" .. name .. ".png",
        icon_size = 32,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 2, result = full_name},
        max_health = 250,
        logistic_slots_count = 12,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        open_sound = {filename = "__pyindustry__/sounds/shed-open.ogg", volume = 0.55},
        close_sound = {filename = "__pyindustry__/sounds/shed-close.ogg", volume = 0.65},
        vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
        scale_entity_info_icon = true,
        resistances = {
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
        picture = {
            filename = "__pyindustry__/graphics/entity/shed/shed-" .. name .. ".png",
            priority = "high",
            width = 68,
            height = 75,
            shift = {0, 0},
            hr_version = {
                filename = "__pyindustry__/graphics/entity/shed/hr-shed-" .. name .. ".png",
                priority = "extra-high",
                width = 136,
                height = 150,
                shift = {0, 0},
                scale = 0.5
            }
        },
        circuit_wire_max_distance = 9,
        --circuit_connector_sprites = connectors.sprites({0.75, 0.55}),
        circuit_wire_connection_point = connectors.points({0.64, 0.13})
    }

    if logistics_name then
        entity.minable.hardness = 0.2
        entity.logistic_mode = logistics_name
        recipe:add_unlock("py-warehouse-logistics-research")
        if (logistics_name == "storage") then
            entity.inventory_size = 150
            entity.logistic_slots_count = 1
        end
    else
        recipe:add_unlock("py-warehouse-research")
    end
end

define_shed("basic", nil)
define_shed("passive-provider", "passive-provider")
define_shed("storage", "storage")
define_shed("active-provider", "active-provider")
define_shed("requester", "requester")
define_shed("buffer", "buffer")
