RECIPE {
    type = "recipe",
    name = "barrel-machine-mk01",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "steel-plate", amount = 5},
        {type = "item", name = "pipe", amount = 10},
        {type = "item", name = "iron-gear-wheel", amount = 20},
        {type = "item", name = "steam-engine", amount = 1},
        {type = "item", name = "iron-plate", amount = 20},
        {type = "item", name = "electronic-circuit", amount = 2}
    },
    results = {
        {type = "item", name = "barrel-machine-mk01", amount = 1}
    }
}:add_unlock("fluid-handling")

ITEM {
    type = "item",
    name = "barrel-machine-mk01",
    icon = "__pyindustry__/graphics/icons/barrel-machine.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-pipes",
    order = "a",
    place_result = "barrel-machine-mk01",
    stack_size = 10
}

ENTITY {
    type = "furnace",
    name = "barrel-machine-mk01",
    icon = "__pyindustry__/graphics/icons/barrel-machine.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "barrel-machine-mk01"},
    fast_replaceable_group = "barrel-machine",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-1.3, -1.3}, {1.3, 1.3}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    match_animation_speed_to_activity = false,
    module_slots = 4,
    allowed_effects = {"speed",'consumption'},
    crafting_categories = {"py-barreling", "py-unbarreling"},
    crafting_speed = 0.5,
    source_inventory_size = 1,
    result_inventory_size = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 1
        },
    },
    energy_usage = "200kW",
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__pyindustry__/graphics/entity/barrel-machine/r.png",
                    width = 96,
                    height = 192,
                    frame_count = 40,
                    line_length = 10,
                    shift = util.by_pixel(0, -48),
                    animation_speed = 0.6,
                },
                {
                    filename = "__pyindustry__/graphics/entity/barrel-machine/ao.png",
                    width = 160,
                    height = 224,
                    frame_count = 40,
                    line_length = 10,
                    shift = util.by_pixel(0, -32),
                    animation_speed = 0.6,
                },
                {
                    filename = "__pyindustry__/graphics/entity/barrel-machine/sh.png",
                    width = 128,
                    height = 128,
                    frame_count = 1,
                    repeat_count = 40,
                    draw_as_shadow = true,
                    line_length = 1,
                    shift = util.by_pixel(16, 16),
                    animation_speed = 0.6,
                },
            }
        },
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {-1.0, -1.0}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "output", position = {1.0, 1.0}, direction = defines.direction.south}}
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/assembling-machine-t2-1.ogg",
          volume = 0.55
        }
      },
      audible_distance_modifier = 0.5,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
}
