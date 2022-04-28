local sounds = require("__base__/prototypes/entity/sounds")

RECIPE {
    type = "recipe",
    name = "mk02-fluid-wagon",
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
        {"mk02-fluid-wagon", 1}
    }
}:add_unlock("railway-mk02")

ITEM {
    type = "item",
    name = "mk02-fluid-wagon",
    icon = "__pyindustry__/graphics/icons/mk02-fluid-wagon.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-trains",
    order = "bc",
    place_result = "mk02-fluid-wagon",
    stack_size = 5
}

{
    type = "fluid-wagon",
    name = "mk02-fluid-wagon",
    icon = "__pyindustry__/graphics/icons/mk02-fluid-wagon.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 0.5, result = "mk02-fluid-wagon"},
    mined_sound = {filename = "__core__/sound/deconstruct-large.ogg",volume = 0.8},
    max_health = 500,
    corpse = "fluid-wagon-remnants",
    dying_explosion = "fluid-wagon-explosion",
    collision_box = {{-0.5, -1.5}, {0.5, 1.5}}, --must have a relation between this box and the joint distance to calibrate the wagon distance. (min 0.2)
    selection_box = {{-1, -1.7}, {1, 1.7}},
    --damaged_trigger_effect = hit_effects.entity(),
    vertical_selection_shift = -1.1,
    weight = 500,
    max_speed = 1.5,
    braking_force = 4,
    friction_force = 0.50,
    air_resistance = 0.0085,
    connection_distance = 2,
    joint_distance = 1.5, --igual to collision box works if the sprite is tight in the png
    tank_count = 1,
    energy_per_hit_point = 5,
    capacity = 20000,
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
            "__pyindustry__/graphics/entity/mk02-train/fluid-wagon/fluid-01.png",
            "__pyindustry__/graphics/entity/mk02-train/fluid-wagon/fluid-02.png",
            "__pyindustry__/graphics/entity/mk02-train/fluid-wagon/fluid-03.png",
            "__pyindustry__/graphics/entity/mk02-train/fluid-wagon/fluid-04.png",
            "__pyindustry__/graphics/entity/mk02-train/fluid-wagon/fluid-05.png",
            "__pyindustry__/graphics/entity/mk02-train/fluid-wagon/fluid-06.png",
            "__pyindustry__/graphics/entity/mk02-train/fluid-wagon/fluid-07.png",
            "__pyindustry__/graphics/entity/mk02-train/fluid-wagon/fluid-08.png",
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
                "__pyindustry__/graphics/entity/mk02-train/fluid-wagon/hr-fluid-01.png",
                "__pyindustry__/graphics/entity/mk02-train/fluid-wagon/hr-fluid-02.png",
                "__pyindustry__/graphics/entity/mk02-train/fluid-wagon/hr-fluid-03.png",
                "__pyindustry__/graphics/entity/mk02-train/fluid-wagon/hr-fluid-04.png",
                "__pyindustry__/graphics/entity/mk02-train/fluid-wagon/hr-fluid-05.png",
                "__pyindustry__/graphics/entity/mk02-train/fluid-wagon/hr-fluid-06.png",
                "__pyindustry__/graphics/entity/mk02-train/fluid-wagon/hr-fluid-07.png",
                "__pyindustry__/graphics/entity/mk02-train/fluid-wagon/hr-fluid-08.png",
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
            "__pyindustry__/graphics/entity/mk02-train/fluid-wagon/fluid-01-mask.png",
            "__pyindustry__/graphics/entity/mk02-train/fluid-wagon/fluid-02-mask.png",
            "__pyindustry__/graphics/entity/mk02-train/fluid-wagon/fluid-03-mask.png",
            "__pyindustry__/graphics/entity/mk02-train/fluid-wagon/fluid-04-mask.png",
            "__pyindustry__/graphics/entity/mk02-train/fluid-wagon/fluid-05-mask.png",
            "__pyindustry__/graphics/entity/mk02-train/fluid-wagon/fluid-06-mask.png",
            "__pyindustry__/graphics/entity/mk02-train/fluid-wagon/fluid-07-mask.png",
            "__pyindustry__/graphics/entity/mk02-train/fluid-wagon/fluid-08-mask.png",
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
                "__pyindustry__/graphics/entity/mk02-train/fluid-wagon/hr-fluid-01-mask.png",
                "__pyindustry__/graphics/entity/mk02-train/fluid-wagon/hr-fluid-02-mask.png",
                "__pyindustry__/graphics/entity/mk02-train/fluid-wagon/hr-fluid-03-mask.png",
                "__pyindustry__/graphics/entity/mk02-train/fluid-wagon/hr-fluid-04-mask.png",
                "__pyindustry__/graphics/entity/mk02-train/fluid-wagon/hr-fluid-05-mask.png",
                "__pyindustry__/graphics/entity/mk02-train/fluid-wagon/hr-fluid-06-mask.png",
                "__pyindustry__/graphics/entity/mk02-train/fluid-wagon/hr-fluid-07-mask.png",
                "__pyindustry__/graphics/entity/mk02-train/fluid-wagon/hr-fluid-08-mask.png",
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
            "__pyindustry__/graphics/entity/mk02-train/fluid-wagon/sh-fluid-01.png",
            "__pyindustry__/graphics/entity/mk02-train/fluid-wagon/sh-fluid-02.png",
            "__pyindustry__/graphics/entity/mk02-train/fluid-wagon/sh-fluid-03.png",
            "__pyindustry__/graphics/entity/mk02-train/fluid-wagon/sh-fluid-04.png",
            "__pyindustry__/graphics/entity/mk02-train/fluid-wagon/sh-fluid-05.png",
            "__pyindustry__/graphics/entity/mk02-train/fluid-wagon/sh-fluid-06.png",
            "__pyindustry__/graphics/entity/mk02-train/fluid-wagon/sh-fluid-07.png",
            "__pyindustry__/graphics/entity/mk02-train/fluid-wagon/sh-fluid-08.png",
          },
          line_length = 7,
          lines_per_file = 5,
          shift = util.by_pixel(32, 0),
        }
      }
    },
    minimap_representation =
    {
      filename = "__pyindustry__/graphics/entity/mk02-train/fluid-wagon/icon-map.png",
      flags = {"icon"},
      size = {20, 44},
      scale = 0.4
    },
    selected_minimap_representation =
    {
      filename = "__pyindustry__/graphics/entity/mk02-train/fluid-wagon/icon-map-selected.png",
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
