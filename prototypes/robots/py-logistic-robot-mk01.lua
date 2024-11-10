local sounds = require "__base__/prototypes/entity/sounds"

local cargo_bot =
    RECIPE {
        type = "recipe",
        name = "py-logistic-robot-mk01",
        energy_required = 10,
        category = "crafting-with-fluid",
        enabled = false,
        ingredients = {
            {type = "item", name = "iron-plate",         amount = 10},
            {type = "item", name = "iron-gear-wheel",    amount = 10},
            {type = "item", name = "copper-plate",       amount = 4},
            {type = "item", name = "electronic-circuit", amount = 10},
            {type = "item", name = "plastic-bar",        amount = 5},
            {type = "item", name = "steam-engine",       amount = 1},
        },
        results = {
            {type = "item", name = "py-logistic-robot-mk01", amount = 1}
        }
    }:add_ingredient {type = "fluid", name = "fish-oil", amount = 50}
cargo_bot:replace_ingredient("copper-plate", {"nichrome", 2}):replace_ingredient("iron-plate", "niobium-plate")
cargo_bot:add_unlock {"logistic-robotics"}

local bot_item = ITEM {
    type = "item",
    name = "py-logistic-robot-mk01",
    icon = "__pyindustry__/graphics/icons/py-logistic-robot-01.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-robots",
    order = "c",
    place_result = "py-logistic-robot-mk01",
    stack_size = 50
}

if data.raw["item-subgroup"]["py-hightech-items"] then
    bot_item:subgroup_order("py-hightech-items", "b")
end

ENTITY {
    type = "logistic-robot",
    name = "py-logistic-robot-mk01",
    icon = "__pyindustry__/graphics/icons/py-logistic-robot-01.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {mining_time = 0.1, result = "py-logistic-robot-mk01"},
    resistances = {{type = "fire", percent = 85}},
    max_health = 100,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    max_payload_size = 3,
    speed = 0.08,
    transfer_distance = 0.5,
    max_energy = "1.5MJ",
    energy_per_tick = "0.05kJ",
    speed_multiplier_when_out_of_energy = 0.2,
    energy_per_move = "4kJ",
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    idle = {
        filename = "__pyindustry__/graphics/entity/py-logistic-robot-01/hr-idle.png",
        priority = "high",
        line_length = 16,
        width = 128,
        height = 128,
        frame_count = 1,
        shift = util.by_pixel(0, 0),
        direction_count = 16,
        --y = 84,
        scale = 0.5
    },
    idle_with_cargo = {
        filename = "__pyindustry__/graphics/entity/py-logistic-robot-01/hr-idle-cargo.png",
        priority = "high",
        line_length = 16,
        width = 128,
        height = 128,
        frame_count = 1,
        shift = util.by_pixel(0, 0),
        direction_count = 16,
        scale = 0.5
    },
    in_motion = {
        filename = "__pyindustry__/graphics/entity/py-logistic-robot-01/hr-run.png",
        priority = "high",
        line_length = 16,
        width = 128,
        height = 128,
        frame_count = 1,
        shift = util.by_pixel(0, 0),
        direction_count = 16,
        scale = 0.5
    },
    in_motion_with_cargo = {
        filename = "__pyindustry__/graphics/entity/py-logistic-robot-01/hr-run-cargo.png",
        priority = "high",
        line_length = 16,
        width = 128,
        height = 128,
        frame_count = 1,
        shift = util.by_pixel(0, 0),
        direction_count = 16,
        scale = 0.5
    },
    shadow_idle = {
        filename = "__pyindustry__/graphics/entity/py-logistic-robot-01/hr-shadow.png",
        priority = "high",
        line_length = 16,
        width = 128,
        height = 96,
        frame_count = 1,
        shift = util.by_pixel(33.5, 18.75),
        draw_as_shadow = true,
        direction_count = 16,
        scale = 0.5
    },
    shadow_idle_with_cargo = {
        filename = "__pyindustry__/graphics/entity/py-logistic-robot-01/hr-shadow-cargo.png",
        priority = "high",
        line_length = 16,
        width = 128,
        height = 96,
        frame_count = 1,
        shift = util.by_pixel(33.5, 18.75),
        draw_as_shadow = true,
        direction_count = 16,
        scale = 0.5
    },
    shadow_in_motion = {
        filename = "__pyindustry__/graphics/entity/py-logistic-robot-01/hr-shadow.png",
        priority = "high",
        line_length = 16,
        width = 128,
        height = 96,
        frame_count = 1,
        shift = util.by_pixel(33.5, 18.75),
        draw_as_shadow = true,
        direction_count = 16,
        scale = 0.5
    },
    shadow_in_motion_with_cargo = {
        filename = "__pyindustry__/graphics/entity/py-logistic-robot-01/hr-shadow-cargo.png",
        priority = "high",
        line_length = 16,
        width = 128,
        height = 96,
        frame_count = 1,
        shift = util.by_pixel(33.5, 18.75),
        draw_as_shadow = true,
        direction_count = 16,
        scale = 0.5
    },
    working_sound = sounds.flying_robot(0.5),
}
