RECIPE {
    type = "recipe",
    name = "py-quartz",
    category = "glassworks",
    enabled = false,
    ingredients = {
        {type = "fluid", name = "slacked-lime",    amount = 10},
        {type = "item",  name = "powdered-quartz", amount = 1},
        {type = "item",  name = "pure-sand",       amount = 2}
    },
    results = {
        {type = "item", name = "py-quartz", amount = 2}
    },
    requester_paste_multiplier = 4,
    energy_required = 3
}:add_unlock("py-asphalt-mk02")

ITEM {
    type = "item",
    name = "py-quartz",
    icon = "__base__/graphics/terrain/lab-tiles/lab-white.png",
    icon_size = 1,
    flags = {},
    subgroup = "py-tiles",
    order = "zc",
    stack_size = 1000,
    place_as_tile = {result = "lab-white", condition_size = 1, condition = {layers = {water_tile = true}}}
}

data.raw.tile["lab-white"].minable = {mining_time = 0.1, result = "py-quartz"}
data.raw.tile["lab-white"].mined_sound = {filename = "__base__/sound/deconstruct-bricks.ogg"}
data.raw.tile["lab-white"].walking_speed_modifier = 3.25
data.raw.tile["lab-white"].decorative_removal_probability = 1
data.raw.tile["lab-white"].layer = 99
data.raw.tile["lab-white"].walking_sound = table.deepcopy(data.raw.tile["grass-1"].walking_sound)
data.raw.tile["lab-white"].collision_mask = {layers = {ground_tile = true}}
data.raw.tile["lab-white"].vehicle_friction_modifier = 0.6
data.raw.tile["lab-white"].tint = {255, 255, 255}

-- giving it concrete base/transitions
data.raw.tile["lab-white"].variants = table.deepcopy(data.raw.tile.concrete.variants)
data.raw.tile["lab-white"].variants.main = {{
    picture = "__base__/graphics/terrain/lab-tiles/lab-white.png",
    count = 1,
    size = 1
}}
