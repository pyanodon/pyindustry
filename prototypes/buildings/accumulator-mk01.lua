RECIPE({
    type = "recipe",
    name = "accumulator-mk01",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        { type = "item", name = "battery",          amount = 20 },
        { type = "item", name = "iron-plate",       amount = 40 },
        { type = "item", name = "copper-plate",     amount = 40 },
        { type = "item", name = "steel-plate",      amount = 50 },
        { type = "item", name = "advanced-circuit", amount = 5 }
    },
    results = {
        { type = "item", name = "accumulator-mk01", amount = 1 }
    }
}):replace_ingredient("steel-plate", "nexelit-plate"):add_ingredient({ type = "item", name = "niobium-plate", amount = 10 }):add_unlock({ "py-accumulator-mk01" })


ITEM({
    type = "item",
    name = "accumulator-mk01",
    icon = "__pyindustrygraphics__/graphics/icons/accumulator-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-electric",
    order = "a",
    place_result = "accumulator-mk01",
    stack_size = 50
})

ENTITY({
    type = "accumulator",
    name = "accumulator-mk01",
    icon = "__pyindustrygraphics__/graphics/icons/accumulator-mk01.png",
    icon_size = 64,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.1, result = "accumulator-mk01" },
    max_health = 150,
    corpse = "medium-remnants",
    collision_box = { { -1.9, -1.9 }, { 1.9, 1.9 } },
    selection_box = { { -2, -2 }, { 2, 2 } },
    energy_source = mods.pyalternativeenergy and {
        type = "electric",
        buffer_capacity = "1GJ",
        usage_priority = "tertiary",
        input_flow_limit = "100MW",
        output_flow_limit = "100MW"
    } or {
        type = "electric",
        buffer_capacity = "100MJ",
        usage_priority = "tertiary",
        input_flow_limit = "20000kW",
        output_flow_limit = "20000kW"
    },
    chargable_graphics = {
        picture = {
            filename = "__pyindustrygraphics__/graphics/entity/accumulator-mk01/accumulator-idle.png",
            priority = "extra-high",
            width = 157,
            height = 244,
            shift = { 0.43, -1.781 }
        },
        charge_animation = {
            filename = "__pyindustrygraphics__/graphics/entity/accumulator-mk01/accumulator-charging.png",
            width = 157,
            height = 244,
            line_length = 10,
            frame_count = 40,
            shift = { 0.43, -1.781 },
            animation_speed = 0.2
        },
        charge_cooldown = 30,
        charge_light = { intensity = 0.3, size = 7, color = { r = 1.0, g = 1.0, b = 1.0 } },
        discharge_animation = {
            filename = "__pyindustrygraphics__/graphics/entity/accumulator-mk01/accumulator-discharging.png",
            width = 157,
            height = 244,
            line_length = 10,
            frame_count = 40,
            shift = { 0.43, -1.781 },
            animation_speed = 0.2
        },
        discharge_cooldown = 60,
        discharge_light = { intensity = 0.7, size = 7, color = { r = 1.0, g = 1.0, b = 1.0 } },
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {
            filename = "__pyindustrygraphics__/sounds/accumulator.ogg",
            volume = 0.5
        },
        idle_sound = {
            filename = "__base__/sound/accumulator-idle.ogg",
            volume = 0.3
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
