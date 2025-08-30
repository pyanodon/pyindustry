RECIPE({
    type = "recipe",
    name = "accumulator-mk02",
    energy_required = 0.5,
    category = "crafting-with-fluid",
    enabled = false,
    ingredients = {
        { type = "item", name = "battery",         amount = 50 },
        { type = "item", name = "processing-unit", amount = 15 },
        { type = "item", name = "iron-plate",      amount = 100 },
        { type = "item", name = "copper-cable",    amount = 150 },
        { type = "item", name = "steel-plate",     amount = 60 },
    },
    results = {
        { type = "item", name = "accumulator-mk02", amount = 1 }
    }
}):replace_ingredient("steel-plate", "nexelit-plate"):add_ingredient({ type = "item", name = "optical-fiber", amount = 30 }):add_unlock("py-accumulator-mk02")

ITEM({
    type = "item",
    name = "accumulator-mk02",
    icon = "__pyindustrygraphics__/graphics/icons/accumulator-mk02.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-electric",
    order = "a",
    place_result = "accumulator-mk02",
    stack_size = 50
})

ENTITY({
    type = "accumulator",
    name = "accumulator-mk02",
    icon = "__pyindustrygraphics__/graphics/icons/accumulator-mk02.png",
    icon_size = 64,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.1, result = "accumulator-mk02" },
    max_health = 150,
    corpse = "medium-remnants",
    collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    energy_source = mods.pyalternativeenergy and {
        type = "electric",
        buffer_capacity = "15GJ",
        usage_priority = "tertiary",
        input_flow_limit = "2GW",
        output_flow_limit = "2GW"
    } or {
        type = "electric",
        buffer_capacity = "450MJ",
        usage_priority = "tertiary",
        input_flow_limit = "50000kW",
        output_flow_limit = "50000kW"
    },
    chargable_graphics = {
        picture = {
            filename = "__pyindustrygraphics__/graphics/entity/accumulator-mk02/charged.png",
            priority = "extra-high",
            width = 192,
            height = 288,
            shift = util.by_pixel(16, -64),
        },
        charge_animation = {
            filename = "__pyindustrygraphics__/graphics/entity/accumulator-mk02/charging.png",
            width = 192,
            height = 288,
            line_length = 10,
            frame_count = 70,
            shift = util.by_pixel(16, -64),
            animation_speed = 0.3
        },
        charge_cooldown = 30,
        charge_light = { intensity = 0.7, size = 7, color = { r = 0.219, g = 0.835, b = 0.188 } },
        discharge_animation = {
            filename = "__pyindustrygraphics__/graphics/entity/accumulator-mk02/discharge.png",
            width = 192,
            height = 288,
            line_length = 9,
            frame_count = 36,
            shift = util.by_pixel(16, -64),
            animation_speed = 0.3
        },
        discharge_cooldown = 60,
        discharge_light = { intensity = 0.7, size = 7, color = { r = 0.862, g = 0.117, b = 0.117 } },
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {
            filename = "__pyindustrygraphics__/sounds/accumulator-mk02.ogg",
            volume = 0.5
        },
        idle_sound = {
            filename = "__base__/sound/accumulator-idle.ogg",
            volume = 0.2
        },
        max_sounds_per_prototype = 5
    },
    circuit_connector = {
        points = {
            shadow = {
                red = { 0.984375, 1.10938 },
                green = { 0.890625, 1.10938 }
            },
            wire = {
                red = { 0.6875, 0.59375 },
                green = { 0.6875, 0.71875 }
            }
        },
        sprites = table.deepcopy(data.raw.accumulator.accumulator.circuit_connector.sprites)
    },
    circuit_wire_max_distance = 9,
    default_output_signal = { type = "virtual", name = "signal-A" },
    fast_replaceable_group = "py-accumulator"
})
