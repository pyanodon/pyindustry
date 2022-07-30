local sounds = require("__base__/prototypes/entity/sounds")

data:extend({{
  type = "equipment-grid",
  name = "mk02-train-equipment-grid",
  width = 4,
  height = 4,
  equipment_categories = table.deepcopy(data.raw["equipment-grid"]["spidertron-equipment-grid"]["equipment_categories"]),
}})

RECIPE {
    type = "recipe",
    name = "mk02-locomotive",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"steel-plate", 150},
        {"plastic-bar", 200},
        {"electronic-circuit", 20},
        {"nexelit-plate", 20},
        {"niobium-plate", 20},
        {"engine-unit", 5},
        {"iron-gear-wheel", 200},
    },
    results = {
        {"mk02-locomotive", 1}
    }
}:add_unlock("railway-mk02")

ITEM {
    type = "item",
    name = "mk02-locomotive",
    icon = "__pyindustry__/graphics/icons/mk02-locomotive.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-trains",
    order = "b",
    place_result = "mk02-locomotive",
    stack_size = 5
}

{
    type = "locomotive",
    name = "mk02-locomotive",
    icon = "__pyindustry__/graphics/icons/mk02-locomotive.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 0.5, result = "mk02-locomotive"},
    mined_sound = {filename = "__core__/sound/deconstruct-large.ogg",volume = 0.8},
    max_health = 1000,
    corpse = "locomotive-remnants",
    dying_explosion = "locomotive-explosion",
    collision_box = {{-0.6, -2.5}, {0.6, 2.5}},
    selection_box = {{-1, -3.5}, {1, 3.5}},
    --damaged_trigger_effect = hit_effects.entity(),
    drawing_box = {{-1, -4}, {1, 3}},
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
    burner =
    {
      fuel_category = "jerry",
      effectivity = 1,
      fuel_inventory_size = 2,
      burnt_inventory_size = 2,
    },
    front_light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__pyindustry__/graphics/entity/mk02-train/locomotive/light-cone.png",
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
        color = {r = 1, g = 0.9, b = 1}
      },
    },
    --back_light = rolling_stock_back_light(),
    stand_by_light = rolling_stock_stand_by_light(),
    color = {r = 1, g = 0.0, b = 0.0},
    pictures =
    {
      layers =
      {
        {
          dice = 4,
          priority = "very-low",
          width = 240,
          height = 240,
          direction_count = 256,
          allow_low_quality_rotation = true,
          filenames =
          {
            "__pyindustry__/graphics/entity/mk02-train/locomotive/loco-01.png",
            "__pyindustry__/graphics/entity/mk02-train/locomotive/loco-02.png",
            "__pyindustry__/graphics/entity/mk02-train/locomotive/loco-03.png",
            "__pyindustry__/graphics/entity/mk02-train/locomotive/loco-04.png",
            "__pyindustry__/graphics/entity/mk02-train/locomotive/loco-05.png",
            "__pyindustry__/graphics/entity/mk02-train/locomotive/loco-06.png",
            "__pyindustry__/graphics/entity/mk02-train/locomotive/loco-07.png",
            "__pyindustry__/graphics/entity/mk02-train/locomotive/loco-08.png",
            "__pyindustry__/graphics/entity/mk02-train/locomotive/loco-09.png",
            "__pyindustry__/graphics/entity/mk02-train/locomotive/loco-10.png",
            "__pyindustry__/graphics/entity/mk02-train/locomotive/loco-11.png",
            "__pyindustry__/graphics/entity/mk02-train/locomotive/loco-12.png",
            "__pyindustry__/graphics/entity/mk02-train/locomotive/loco-13.png",
            "__pyindustry__/graphics/entity/mk02-train/locomotive/loco-14.png",
            "__pyindustry__/graphics/entity/mk02-train/locomotive/loco-15.png",
            "__pyindustry__/graphics/entity/mk02-train/locomotive/loco-16.png",
          },
          line_length = 4,
          lines_per_file = 4,
          shift = util.by_pixel(0, -32),
          hr_version =
          {
            priority = "very-low",
            dice = 4,
            width = 480,
            height = 480,
            direction_count = 256,
            allow_low_quality_rotation = true,
            filenames =
            {
                "__pyindustry__/graphics/entity/mk02-train/locomotive/hr-loco-01.png",
                "__pyindustry__/graphics/entity/mk02-train/locomotive/hr-loco-02.png",
                "__pyindustry__/graphics/entity/mk02-train/locomotive/hr-loco-03.png",
                "__pyindustry__/graphics/entity/mk02-train/locomotive/hr-loco-04.png",
                "__pyindustry__/graphics/entity/mk02-train/locomotive/hr-loco-05.png",
                "__pyindustry__/graphics/entity/mk02-train/locomotive/hr-loco-06.png",
                "__pyindustry__/graphics/entity/mk02-train/locomotive/hr-loco-07.png",
                "__pyindustry__/graphics/entity/mk02-train/locomotive/hr-loco-08.png",
                "__pyindustry__/graphics/entity/mk02-train/locomotive/hr-loco-09.png",
                "__pyindustry__/graphics/entity/mk02-train/locomotive/hr-loco-10.png",
                "__pyindustry__/graphics/entity/mk02-train/locomotive/hr-loco-11.png",
                "__pyindustry__/graphics/entity/mk02-train/locomotive/hr-loco-12.png",
                "__pyindustry__/graphics/entity/mk02-train/locomotive/hr-loco-13.png",
                "__pyindustry__/graphics/entity/mk02-train/locomotive/hr-loco-14.png",
                "__pyindustry__/graphics/entity/mk02-train/locomotive/hr-loco-15.png",
                "__pyindustry__/graphics/entity/mk02-train/locomotive/hr-loco-16.png",
            },
            line_length = 4,
            lines_per_file = 4,
            shift = util.by_pixel(0, -32),
            scale = 0.5
            }
        },
        {
          dice = 4,
          priority = "very-low",
          flags = { "mask" },
          width = 240,
          height = 240,
          direction_count = 256,
          draw_as_glow = true,
          blend_mode = "additive",
          allow_low_quality_rotation = true,
          filenames =
          {
            "__pyindustry__/graphics/entity/mk02-train/locomotive/loco-01-mask.png",
            "__pyindustry__/graphics/entity/mk02-train/locomotive/loco-02-mask.png",
            "__pyindustry__/graphics/entity/mk02-train/locomotive/loco-03-mask.png",
            "__pyindustry__/graphics/entity/mk02-train/locomotive/loco-04-mask.png",
            "__pyindustry__/graphics/entity/mk02-train/locomotive/loco-05-mask.png",
            "__pyindustry__/graphics/entity/mk02-train/locomotive/loco-06-mask.png",
            "__pyindustry__/graphics/entity/mk02-train/locomotive/loco-07-mask.png",
            "__pyindustry__/graphics/entity/mk02-train/locomotive/loco-08-mask.png",
            "__pyindustry__/graphics/entity/mk02-train/locomotive/loco-09-mask.png",
            "__pyindustry__/graphics/entity/mk02-train/locomotive/loco-10-mask.png",
            "__pyindustry__/graphics/entity/mk02-train/locomotive/loco-11-mask.png",
            "__pyindustry__/graphics/entity/mk02-train/locomotive/loco-12-mask.png",
            "__pyindustry__/graphics/entity/mk02-train/locomotive/loco-13-mask.png",
            "__pyindustry__/graphics/entity/mk02-train/locomotive/loco-14-mask.png",
            "__pyindustry__/graphics/entity/mk02-train/locomotive/loco-15-mask.png",
            "__pyindustry__/graphics/entity/mk02-train/locomotive/loco-16-mask.png",
          },
          line_length = 4,
          lines_per_file = 4,
          shift = util.by_pixel(0, -32),
          apply_runtime_tint = true,
          hr_version =
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
                "__pyindustry__/graphics/entity/mk02-train/locomotive/hr-loco-01-mask.png",
                "__pyindustry__/graphics/entity/mk02-train/locomotive/hr-loco-02-mask.png",
                "__pyindustry__/graphics/entity/mk02-train/locomotive/hr-loco-03-mask.png",
                "__pyindustry__/graphics/entity/mk02-train/locomotive/hr-loco-04-mask.png",
                "__pyindustry__/graphics/entity/mk02-train/locomotive/hr-loco-05-mask.png",
                "__pyindustry__/graphics/entity/mk02-train/locomotive/hr-loco-06-mask.png",
                "__pyindustry__/graphics/entity/mk02-train/locomotive/hr-loco-07-mask.png",
                "__pyindustry__/graphics/entity/mk02-train/locomotive/hr-loco-08-mask.png",
                "__pyindustry__/graphics/entity/mk02-train/locomotive/hr-loco-09-mask.png",
                "__pyindustry__/graphics/entity/mk02-train/locomotive/hr-loco-10-mask.png",
                "__pyindustry__/graphics/entity/mk02-train/locomotive/hr-loco-11-mask.png",
                "__pyindustry__/graphics/entity/mk02-train/locomotive/hr-loco-12-mask.png",
                "__pyindustry__/graphics/entity/mk02-train/locomotive/hr-loco-13-mask.png",
                "__pyindustry__/graphics/entity/mk02-train/locomotive/hr-loco-14-mask.png",
                "__pyindustry__/graphics/entity/mk02-train/locomotive/hr-loco-15-mask.png",
                "__pyindustry__/graphics/entity/mk02-train/locomotive/hr-loco-16-mask.png",
            },
            line_length = 4,
            lines_per_file = 4,
            shift = util.by_pixel(0, -32),
            apply_runtime_tint = true,
            scale = 0.5
            }
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
            "__pyindustry__/graphics/entity/mk02-train/locomotive/sh-01.png",
            "__pyindustry__/graphics/entity/mk02-train/locomotive/sh-02.png",
            "__pyindustry__/graphics/entity/mk02-train/locomotive/sh-03.png",
            "__pyindustry__/graphics/entity/mk02-train/locomotive/sh-04.png",
            "__pyindustry__/graphics/entity/mk02-train/locomotive/sh-05.png",
            "__pyindustry__/graphics/entity/mk02-train/locomotive/sh-06.png",
            "__pyindustry__/graphics/entity/mk02-train/locomotive/sh-07.png",
            "__pyindustry__/graphics/entity/mk02-train/locomotive/sh-08.png",
            "__pyindustry__/graphics/entity/mk02-train/locomotive/sh-09.png",
            "__pyindustry__/graphics/entity/mk02-train/locomotive/sh-10.png",
            "__pyindustry__/graphics/entity/mk02-train/locomotive/sh-11.png",
            "__pyindustry__/graphics/entity/mk02-train/locomotive/sh-12.png",
            "__pyindustry__/graphics/entity/mk02-train/locomotive/sh-13.png",
            "__pyindustry__/graphics/entity/mk02-train/locomotive/sh-14.png",
            "__pyindustry__/graphics/entity/mk02-train/locomotive/sh-15.png",
            "__pyindustry__/graphics/entity/mk02-train/locomotive/sh-16.png",
          },
          line_length = 4,
          lines_per_file = 4,
          shift = util.by_pixel(32, 0),
        }
      }
    },
    minimap_representation =
    {
      filename = "__pyindustry__/graphics/entity/mk02-train/locomotive/icon-map.png",
      flags = {"icon"},
      size = {20, 44},
      scale = 0.4
    },
    selected_minimap_representation =
    {
      filename = "__pyindustry__/graphics/entity/mk02-train/locomotive/icon-map-selected.png",
      flags = {"icon"},
      size = {20, 44},
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
          filename = "__pyindustry__/sounds/mk02-locomotive-off.ogg",
          volume = 0.5
        },
      },
    },
    drive_over_tie_trigger = drive_over_tie(),
    tie_distance = 30,
    vehicle_impact_sound = sounds.generic_impact,
    working_sound =
    {
      sound =
      {
        filename = "__pyindustry__/sounds/mk02-locomotive.ogg",
        volume = 1.2
      },
      deactivate_sound =
      {
        filename = "__pyindustry__/sounds/mk02-locomotive-stop.ogg",
        volume = 0.3
      },
      match_speed_to_activity = true,
      max_sounds_per_type = 2,
      -- use_doppler_shift = false
    },
    --open_sound = { filename = "__pyindustry__/sounds/mk02-locomotive-open.ogg", volume=0.5 },
    close_sound = { filename = "__pyindustry__/sounds/mk02-locomotive-close.ogg", volume = 0.4 },
    sound_minimum_speed = 0.5,
    sound_scaling_ratio = 0.35,
    equipment_grid = "mk02-train-equipment-grid",
    water_reflection = _ENV.locomotive_reflection(),
  }
