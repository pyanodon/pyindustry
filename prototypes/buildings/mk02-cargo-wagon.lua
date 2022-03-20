local sounds = require("__base__/prototypes/entity/sounds")

RECIPE {
    type = "recipe",
    name = "mk02-wagon",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"steel-plate", 50},
        {"plastic-bar", 100},
        {"niobium-plate", 10},
        {"nexelit-plate", 20},
        {"iron-gear-wheel", 100},
    },
    results = {
        {"mk02-wagon", 1}
    }
}:add_unlock("railway-mk02")

ITEM {
    type = "item",
    name = "mk02-wagon",
    icon = "__pyindustry__/graphics/icons/mk02-cargo-wagon.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-trains",
    order = "bb",
    place_result = "mk02-wagon",
    stack_size = 10
}

{
    type = "cargo-wagon",
    name = "mk02-wagon",
    icon = "__pyindustry__/graphics/icons/mk02-cargo-wagon.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 0.5, result = "mk02-wagon"},
    mined_sound = {filename = "__core__/sound/deconstruct-large.ogg",volume = 0.8},
    max_health = 500,
    corpse = "cargo-wagon-remnants",
    dying_explosion = "cargo-wagon-explosion",
    collision_box = {{-0.5, -1.5}, {0.5, 1.5}}, --must have a relation between this box and the joint distance to calibrate the wagon distance. (min 0.2)
    selection_box = {{-1, -1.7}, {1, 1.7}},
    --damaged_trigger_effect = hit_effects.entity(),
    vertical_selection_shift = -1.1,
    weight = 600,
    max_speed = 1.5,
    braking_force = 15,
    friction_force = 0.50,
    air_resistance = 0.0085,
    connection_distance = 2,
    joint_distance = 1.5, --igual to collision box works if the sprite is tight in the png
    energy_per_hit_point = 5,
    inventory_size = 30,
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
    --back_light = rolling_stock_back_light(),
    stand_by_light = rolling_stock_stand_by_light(),
    color = {r = 1, g = 0.0, b = 0.0},
    pictures =
    {
      layers =
      {
        {
          --dice = 4,
          priority = "very-low",
          width = 144,
          height = 176,
          --back_equals_front = true,
          direction_count = 256,
          allow_low_quality_rotation = true,
          filenames =
          {
            "__pyindustry__/graphics/entity/mk02-train/cargo-wagon/wagon-01.png",
            "__pyindustry__/graphics/entity/mk02-train/cargo-wagon/wagon-02.png",
            "__pyindustry__/graphics/entity/mk02-train/cargo-wagon/wagon-03.png",
            "__pyindustry__/graphics/entity/mk02-train/cargo-wagon/wagon-04.png",
            "__pyindustry__/graphics/entity/mk02-train/cargo-wagon/wagon-05.png",
            "__pyindustry__/graphics/entity/mk02-train/cargo-wagon/wagon-06.png",
            "__pyindustry__/graphics/entity/mk02-train/cargo-wagon/wagon-07.png",
            "__pyindustry__/graphics/entity/mk02-train/cargo-wagon/wagon-08.png",
          },
          line_length = 7,
          lines_per_file = 5,
          shift = util.by_pixel(0, -24),
          hr_version =
          {
            priority = "very-low",
            --dice = 4,
            width = 288,
            height = 352,
            --back_equals_front = true,
            direction_count = 256,
            allow_low_quality_rotation = true,
            filenames =
            {
                "__pyindustry__/graphics/entity/mk02-train/cargo-wagon/hr-wagon-01.png",
                "__pyindustry__/graphics/entity/mk02-train/cargo-wagon/hr-wagon-02.png",
                "__pyindustry__/graphics/entity/mk02-train/cargo-wagon/hr-wagon-03.png",
                "__pyindustry__/graphics/entity/mk02-train/cargo-wagon/hr-wagon-04.png",
                "__pyindustry__/graphics/entity/mk02-train/cargo-wagon/hr-wagon-05.png",
                "__pyindustry__/graphics/entity/mk02-train/cargo-wagon/hr-wagon-06.png",
                "__pyindustry__/graphics/entity/mk02-train/cargo-wagon/hr-wagon-07.png",
                "__pyindustry__/graphics/entity/mk02-train/cargo-wagon/hr-wagon-08.png",
            },
            line_length = 7,
            lines_per_file = 5,
            shift = util.by_pixel(0, -24),
            scale = 0.5
            }
        },
        {
          --dice = 4,
          priority = "very-low",
          flags = { "mask" },
          width = 144,
          height = 176,
          --back_equals_front = true,
          direction_count = 256,
          draw_as_glow = true,
          blend_mode = "additive",
          allow_low_quality_rotation = true,
          apply_runtime_tint = true,
          filenames =
          {
            "__pyindustry__/graphics/entity/mk02-train/cargo-wagon/wagon-01-mask.png",
            "__pyindustry__/graphics/entity/mk02-train/cargo-wagon/wagon-02-mask.png",
            "__pyindustry__/graphics/entity/mk02-train/cargo-wagon/wagon-03-mask.png",
            "__pyindustry__/graphics/entity/mk02-train/cargo-wagon/wagon-04-mask.png",
            "__pyindustry__/graphics/entity/mk02-train/cargo-wagon/wagon-05-mask.png",
            "__pyindustry__/graphics/entity/mk02-train/cargo-wagon/wagon-06-mask.png",
            "__pyindustry__/graphics/entity/mk02-train/cargo-wagon/wagon-07-mask.png",
            "__pyindustry__/graphics/entity/mk02-train/cargo-wagon/wagon-08-mask.png",
          },
          line_length = 7,
          lines_per_file = 5,
          shift = util.by_pixel(0, -24),
          hr_version =
          {
            priority = "very-low",
            flags = { "mask" },
            --dice = 4,
            width = 288,
            height = 352,
            --back_equals_front = true,
            direction_count = 256,
            draw_as_glow = true,
            blend_mode = "additive",
            allow_low_quality_rotation = true,
            apply_runtime_tint = true,
            filenames =
            {
                "__pyindustry__/graphics/entity/mk02-train/cargo-wagon/hr-wagon-01-mask.png",
                "__pyindustry__/graphics/entity/mk02-train/cargo-wagon/hr-wagon-02-mask.png",
                "__pyindustry__/graphics/entity/mk02-train/cargo-wagon/hr-wagon-03-mask.png",
                "__pyindustry__/graphics/entity/mk02-train/cargo-wagon/hr-wagon-04-mask.png",
                "__pyindustry__/graphics/entity/mk02-train/cargo-wagon/hr-wagon-05-mask.png",
                "__pyindustry__/graphics/entity/mk02-train/cargo-wagon/hr-wagon-06-mask.png",
                "__pyindustry__/graphics/entity/mk02-train/cargo-wagon/hr-wagon-07-mask.png",
                "__pyindustry__/graphics/entity/mk02-train/cargo-wagon/hr-wagon-08-mask.png",
            },
            line_length = 7,
            lines_per_file = 5,
            shift = util.by_pixel(0, -24),
            scale = 0.5
            }
        },
        {
          priority = "very-low",
          --dice = 4,
          flags = { "shadow" },
          width = 144,
          height = 112,
          --back_equals_front = true,
          direction_count = 256,
          draw_as_shadow = true,
          allow_low_quality_rotation = true,
          filenames =
          {
            "__pyindustry__/graphics/entity/mk02-train/cargo-wagon/sh-wagon-01.png",
            "__pyindustry__/graphics/entity/mk02-train/cargo-wagon/sh-wagon-02.png",
            "__pyindustry__/graphics/entity/mk02-train/cargo-wagon/sh-wagon-03.png",
            "__pyindustry__/graphics/entity/mk02-train/cargo-wagon/sh-wagon-04.png",
            "__pyindustry__/graphics/entity/mk02-train/cargo-wagon/sh-wagon-05.png",
            "__pyindustry__/graphics/entity/mk02-train/cargo-wagon/sh-wagon-06.png",
            "__pyindustry__/graphics/entity/mk02-train/cargo-wagon/sh-wagon-07.png",
            "__pyindustry__/graphics/entity/mk02-train/cargo-wagon/sh-wagon-08.png",
          },
          line_length = 7,
          lines_per_file = 5,
          shift = util.by_pixel(32, 0),
        }
      }
    },
    minimap_representation =
    {
      filename = "__pyindustry__/graphics/entity/mk02-train/cargo-wagon/icon-map.png",
      flags = {"icon"},
      size = {20, 44},
      scale = 0.4
    },
    selected_minimap_representation =
    {
      filename = "__pyindustry__/graphics/entity/mk02-train/cargo-wagon/icon-map-selected.png",
      flags = {"icon"},
      size = {20, 44},
      scale = 0.4
    },
    --wheels = standard_train_wheels,
    drive_over_tie_trigger = drive_over_tie(),
    tie_distance = 30,
    crash_trigger = crash_trigger(),
    open_sound = sounds.cargo_wagon_open,
    close_sound = sounds.cargo_wagon_close,
    sound_minimum_speed = 1,
    vehicle_impact_sound = sounds.generic_impact,
    --equipment_grid = "spidertron-equipment-grid",
    water_reflection = locomotive_reflection(),
  }
