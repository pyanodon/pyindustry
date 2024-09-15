RECIPE {
    type = 'recipe',
    name = 'py-recharge-station-mk01',
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = 'steel-plate', amount = 20},
        {type = "item", name = 'copper-plate', amount = 15},
        {type = "item", name = 'copper-cable', amount = 30},
        {type = "item", name = 'electronic-circuit', amount = 10}
    },
    results = {
        {type = "item", name = 'py-recharge-station-mk01', amount = 1}
    }
}:add_unlock('construction-robotics')

ITEM {
    type = 'item',
    name = 'py-recharge-station-mk01',
    icon = '__pyindustry__/graphics/icons/py-recharge-station-mk01.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-stations',
    order = 'a',
    place_result = 'py-recharge-station-mk01',
    stack_size = 10
}

ENTITY {
    type = "roboport",
    name = "py-recharge-station-mk01",
    icon = "__pyindustry__/graphics/icons/py-recharge-station-mk01.png",
    icon_size = 64,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.1, result = "py-recharge-station-mk01"},
    fast_replaceable_group = "roboport",
    max_health = 1000,
    corpse = "medium-remnants",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    dying_explosion = "medium-explosion",
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-input",
      input_flow_limit = "25000kW",
      buffer_capacity = "300MJ"
    },
    recharge_minimum = "60MJ",
    energy_usage = "50kW",
    -- per one charge slot
    charging_energy = "500kW",
    logistics_radius = 1,
    construction_radius = 1,
    charge_approach_distance = 5,
    robot_slots_count = 0,
    material_slots_count = 0,
    stationing_offset = {0, 0},
    charging_offsets =
    {
      {-0.5, -2.5}, {0.5, -2.5}, {-0.5, 2.5}, {0.5, 2.5},
    },
    base_animation =
    {
      filename = "__pyindustry__/graphics/entity/py-recharge-station-mk01/pilar.png",
      line_length = 12,
      width = 160,
      height = 224,
      frame_count = 100,
      shift = util.by_pixel(0, -64),
      animation_speed = 0.5,
    },
    base =
    {
        filename = "__pyindustry__/graphics/entity/py-recharge-station-mk01/blank.png",
        width = 1,
        height = 1,
        frame_count = 1,
    },
    base_patch =
    {
      filename = "__pyindustry__/graphics/entity/py-recharge-station-mk01/blank.png",
      width = 1,
      height = 1,
      frame_count = 1,
    },
    door_animation_up =
    {
      filename = "__pyindustry__/graphics/entity/py-recharge-station-mk01/blank.png",
      width = 1,
      height = 1,
      frame_count = 1,
    },
    door_animation_down =
    {
      filename = "__pyindustry__/graphics/entity/py-recharge-station-mk01/blank.png",
      width = 1,
      height = 1,
      frame_count = 1,
    },
    recharging_animation = {
        filename = '__pyindustry__/graphics/entity/py-roboport-mk01/effect.png',
        priority = 'high',
        width = 128,
        height = 88,
        frame_count = 16,
        shift = util.by_pixel(-1, -21),
        scale = 0.5,
        animation_speed = 0.5
    },
    recharging_light = {intensity = 0.4, size = 5},
    request_to_open_door_timeout = 15,
    spawn_and_station_height = 0.33,
    radius_visualisation_picture =
    {
      filename = "__pyindustry__/graphics/entity/roboport/blank.png",
      width = 12,
      height = 12
    },
    construction_radius_visualisation_picture =
    {
      filename = "__pyindustry__/graphics/entity/roboport/blank.png",
      width = 12,
      height = 12
    },
  }
