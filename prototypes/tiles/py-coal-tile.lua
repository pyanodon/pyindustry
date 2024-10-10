RECIPE {
    type = "recipe",
    name = "py-coal-tile",
    category = "crafting",
    enabled = false,
    ingredients = {
        {type = "item", name = "coal", amount = 2}, --ash, 2
        {type = "item", name = "wood", amount = 10} --tailings-dust, 10,
    },
    results = {
        {type = "item", name = "py-coal-tile", amount = 1}
    },
    requester_paste_multiplier = 4,
    energy_required = 3
}:add_unlock("py-asphalt"):replace_ingredient("coal", "ash"):replace_ingredient("wood", "tailings-dust")

if mods.pypetroleumhandling then
    RECIPE("py-coal-tile"):add_ingredient {type = "fluid", name = "medium-distillate", amount = 20}
    data.raw.recipe["py-coal-tile"].category = "reformer"
    data.raw.recipe["py-coal-tile"].results = {{"py-coal-tile", 2}}
end

ITEM {
    type = "item",
    name = "py-coal-tile",
    icon = "__base__/graphics/terrain/lab-tiles/lab-dark-1.png",
    icon_size = 1,
    flags = {},
    subgroup = "py-tiles",
    order = "za",
    stack_size = 1000,
    place_as_tile = {result = "py-coal-tile", condition_size = 1, condition = {layers = {water_tile = true}}}
}

TILE {
    type = "tile",
    name = "py-coal-tile",
    needs_correction = false,
    minable = {mining_time = 0.1, result = "py-coal-tile"},
    mined_sound = {filename = "__base__/sound/deconstruct-bricks.ogg"},
    collision_mask = {layers = {ground_tile = true}},
    walking_speed_modifier = 3.25,
    decorative_removal_probability = 1,
    layer = 101,
    layer_group = "ground-artificial",
    variants = {
        main = data.raw.tile["lab-dark-1"].variants.main,
        transition = {
            overlay_layout = {
                inner_corner = {
                    spritesheet = "__pyindustry__/graphics/tiles/py-asphalt/concrete-inner-corner.png",
                    count = 8
                },
                outer_corner = {
                    spritesheet = "__pyindustry__/graphics/tiles/py-asphalt/concrete-outer-corner.png",
                    count = 8
                },
                side = {
                    spritesheet = "__pyindustry__/graphics/tiles/py-asphalt/concrete-side.png",
                    count = 8
                },
                u_transition = {
                    spritesheet = "__pyindustry__/graphics/tiles/py-asphalt/concrete-u.png",
                    count = 8
                },
                o_transition = {
                    spritesheet = "__pyindustry__/graphics/tiles/py-asphalt/concrete-o.png",
                    count = 1
                }
            }
        }
    },
    walking_sound = table.deepcopy(data.raw.tile["grass-1"].walking_sound),
    map_color = {r = 50, g = 50, b = 50, a = 1},
    absorptions_per_second = {pollution = 0},
    vehicle_friction_modifier = 0.6,
    tint = {0.2, 0.2, 0.2}
}
