RECIPE {
    type = "recipe",
    name = "py-aluminium",
    category = "crafting",
    enabled = false,
    ingredients = {
        {type = "item", name = "copper-plate", amount = 2},
        {type = "item", name = "iron-stick",   amount = 1}
    },
    results = {
        {type = "item", name = "py-aluminium", amount = 1}
    },
    requester_paste_multiplier = 4,
    energy_required = 3
}:add_unlock("py-asphalt-mk02", "coal-processing-2"):replace_ingredient("iron-stick", "solder"):replace_ingredient("copper-plate", "aluminium-plate")

if mods.pyrawores then
    RECIPE("py-aluminium"):add_ingredient {"graphite", 1}
    data.raw.recipe["py-aluminium"].category = "eaf"
    data.raw.recipe["py-aluminium"].results = {{"py-aluminium", 2}}
end

ITEM {
    type = "item",
    name = "py-aluminium",
    icon = "__pyindustrygraphics__/graphics/icons/py-aluminium.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-tiles",
    order = "a-aluminium-oxide",
    stack_size = 1000,
    place_as_tile = {result = "py-aluminium", condition_size = 1, condition = {layers = {water_tile = true}}}
}

TILE {
    type = "tile",
    name = "py-aluminium",
    needs_correction = false,
    minable = {mining_time = 0.1, result = "py-aluminium"},
    mined_sound = {filename = "__base__/sound/deconstruct-bricks.ogg"},
    collision_mask = {layers = {ground_tile = true}},
    walking_speed_modifier = 3.5,
    decorative_removal_probability = 1,
    layer = 78,
    layer_group = "ground-artificial",
    walking_sound = table.deepcopy(data.raw.tile["dry-dirt"].walking_sound),
    map_color = {r = 100, g = 100, b = 100, a = 1},
    absorptions_per_second = {pollution = 0},
    vehicle_friction_modifier = 0.6,
    variants = {
        transition = table.deepcopy(TILE("concrete").variants.transition),
        material_background =
        {
            picture = "__pyindustrygraphics__/graphics/tiles/py-aluminium/py-aluminium.png",
            count = 4,
            scale = 0.5
        }
    }
}
