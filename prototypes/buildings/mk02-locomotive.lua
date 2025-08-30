local sounds = require("__base__/prototypes/entity/sounds")

RECIPE({
    type = "recipe",
    name = "mk02-locomotive",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        { type = "item", name = "steel-plate",        amount = 150 },
        { type = "item", name = "plastic-bar",        amount = 200 },
        { type = "item", name = "electronic-circuit", amount = 20 },
        { type = "item", name = "nexelit-plate",      amount = 20 },
        { type = "item", name = "niobium-plate",      amount = 20 },
        { type = "item", name = "engine-unit",        amount = 5 },
        { type = "item", name = "iron-gear-wheel",    amount = 200 },
    },
    results = {
        { type = "item", name = "mk02-locomotive", amount = 1 }
    }
}):add_unlock("railway-mk02")

ITEM({
    type = "item-with-entity-data",
    name = "mk02-locomotive",
    icon = "__pyindustrygraphics__/graphics/icons/mk02-locomotive.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-trains",
    order = "b",
    place_result = "mk02-locomotive",
    stack_size = 5
})

ENTITY({
    type = "locomotive",
    name = "mk02-locomotive",
    icon = "__pyindustrygraphics__/graphics/icons/mk02-locomotive.png",
    icon_size = 64,
    flags = { "placeable-neutral", "player-creation", "placeable-off-grid" },
    minable = { mining_time = 0.5, result = "mk02-locomotive" },
    mined_sound = { filename = "__core__/sound/deconstruct-large.ogg", volume = 0.8 },
    max_health = 1000,
    corpse = "locomotive-remnants",
    dying_explosion = "locomotive-explosion",
    collision_box = { { -0.6, -2.5 }, { 0.6, 2.5 } },
    selection_box = { { -1, -3.5 }, { 1, 3.5 } },
    --damaged_trigger_effect = hit_effects.entity(),
    drawing_box_vertical_extension = data.raw[ "locomotive" ][ "locomotive" ].drawing_box_vertical_extension,
    alert_icon_shift = util.by_pixel(0, -24),
    weight = 1600,
    max_speed = 1.30,
    max_power = "900kW",
    reversing_power_modifier = 0.6,
    braking_force = 12,
    friction_force = 0.40,
    vertical_selection_shift = -0.7,
    air_resistance = 0.0085, -- this is a percentage of current speed that will be subtracted
    connection_distance = 3,
    joint_distance = 4,
    energy_per_hit_point = 5,
    resistances =
    {
        {
            type = "fire",
            decrease = 15,
            percent = 90
        },
        {
            type = "physical",
            decrease = 15,
            percent = 20
        },
        {
            type = "impact",
            decrease = 50,
            percent = 40
        },
        {
            type = "explosion",
            decrease = 15,
            percent = 30
        },
        {
            type = "acid",
            decrease = 3,
            percent = 90
        }
    },
    energy_source =
    {
        type = "burner",
        fuel_categories = { "jerry" },
        effectivity = 1,
        fuel_inventory_size = 5,
        burnt_inventory_size = 5,
    },
    front_light =
    {
        {
            type = "oriented",
            minimum_darkness = 0.3,
            picture =
            {
                filename = "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/light-cone.png",
                priority = "extra-high",
                flags = { "light" },
                draw_as_glow = true,
                scale = 1,
                width = 240,
                height = 328
            },
            shift = util.by_pixel(0, -272),
            size = 1.0,
            intensity = 2.0,
            color = { r = 1, g = 0.9, b = 1 }
        },
    },
    --back_light = rolling_stock_back_light(),
    stand_by_light = {
        {
            minimum_darkness = 0.3,
            color = { 1, 0.1, 0.05, 0 },
            shift = { -0.6, 3.5 },
            size = 2,
            intensity = 0.6,
            add_perspective = true
        },
        {
            minimum_darkness = 0.3,
            color = { 1, 0.1, 0.05, 0 },
            shift = { 0.6, 3.5 },
            size = 2,
            intensity = 0.6,
            add_perspective = true
        }
    },
    color = { r = 1, g = 0.0, b = 0.0 },
    pictures =
    {
        rotated =
        {
            layers =
            {
                {
                    priority = "very-low",
                    dice = 4,
                    width = 480,
                    height = 480,
                    direction_count = 256,
                    allow_low_quality_rotation = true,
                    filenames =
                    {
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/loco-01.png",
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/loco-02.png",
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/loco-03.png",
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/loco-04.png",
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/loco-05.png",
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/loco-06.png",
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/loco-07.png",
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/loco-08.png",
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/loco-09.png",
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/loco-10.png",
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/loco-11.png",
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/loco-12.png",
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/loco-13.png",
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/loco-14.png",
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/loco-15.png",
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/loco-16.png",
                    },
                    line_length = 4,
                    lines_per_file = 4,
                    shift = util.by_pixel(0, -32),
                    scale = 0.5
                },
                {
                    priority = "very-low",
                    flags = { "mask" },
                    dice = 4,
                    width = 480,
                    height = 480,
                    direction_count = 256,
                    draw_as_glow = true,
                    blend_mode = "additive",
                    allow_low_quality_rotation = true,
                    filenames =
                    {
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/loco-01-mask.png",
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/loco-02-mask.png",
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/loco-03-mask.png",
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/loco-04-mask.png",
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/loco-05-mask.png",
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/loco-06-mask.png",
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/loco-07-mask.png",
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/loco-08-mask.png",
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/loco-09-mask.png",
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/loco-10-mask.png",
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/loco-11-mask.png",
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/loco-12-mask.png",
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/loco-13-mask.png",
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/loco-14-mask.png",
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/loco-15-mask.png",
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/loco-16-mask.png",
                    },
                    line_length = 4,
                    lines_per_file = 4,
                    shift = util.by_pixel(0, -32),
                    apply_runtime_tint = true,
                    scale = 0.5
                },

                {
                    priority = "very-low",
                    dice = 4,
                    flags = { "shadow" },
                    width = 256,
                    height = 240,
                    direction_count = 256,
                    draw_as_shadow = true,
                    allow_low_quality_rotation = true,
                    filenames =
                    {
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/sh-01.png",
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/sh-02.png",
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/sh-03.png",
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/sh-04.png",
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/sh-05.png",
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/sh-06.png",
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/sh-07.png",
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/sh-08.png",
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/sh-09.png",
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/sh-10.png",
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/sh-11.png",
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/sh-12.png",
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/sh-13.png",
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/sh-14.png",
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/sh-15.png",
                        "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/sh-16.png",
                    },
                    line_length = 4,
                    lines_per_file = 4,
                    shift = util.by_pixel(32, 0),
                }
            }
        },
    },
    minimap_representation =
    {
        filename = "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/icon-map.png",
        flags = { "icon" },
        size = { 20, 44 },
        scale = 0.4
    },
    selected_minimap_representation =
    {
        filename = "__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/icon-map-selected.png",
        flags = { "icon" },
        size = { 20, 44 },
        scale = 0.4
    },
    --wheels = standard_train_wheels,
    stop_trigger =
    {
        -- left side

        {
            type = "play-sound",
            sound =
            {
                filename = "__pyindustrygraphics__/sounds/mk02-locomotive-off.ogg",
                volume = 0.5
            },
        },
    },
    drive_over_tie_trigger = {
        type = "play-sound",
        sound = sound_variations("__base__/sound/train-tie", 6, 0.4, { volume_multiplier("main-menu", 2.4), volume_multiplier("driving", 1.3) })
    },
    tie_distance = 30,
    impact_category = "default",
    working_sound =
    {
        sound =
        {
            filename = "__pyindustrygraphics__/sounds/mk02-locomotive.ogg",
            volume = 1.2
        },
        deactivate_sound =
        {
            filename = "__pyindustrygraphics__/sounds/mk02-locomotive-stop.ogg",
            volume = 0.3
        },
        match_speed_to_activity = true,
        max_sounds_per_prototype = 2,
        -- use_doppler_shift = false
    },
    --open_sound = { filename = "__pyindustrygraphics__/sounds/mk02-locomotive-open.ogg", volume=0.5 },
    close_sound = { filename = "__pyindustrygraphics__/sounds/mk02-locomotive-close.ogg", volume = 0.4 },
    sound_minimum_speed = 0.5,
    sound_scaling_ratio = 0.35,
    water_reflection = {
        pictures =
        {
            filename = "__base__/graphics/entity/locomotive/reflection/locomotive-reflection.png",
            priority = "extra-high",
            width = 20,
            height = 52,
            shift = util.by_pixel(0, 40),
            variation_count = 1,
            scale = 5
        },
        rotate = true,
        orientation_to_variation = false
    },
})
