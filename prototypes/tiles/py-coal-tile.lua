RECIPE({
    type = "recipe",
    name = "py-coal-tile",
    category = "crafting",
    enabled = false,
    ingredients = {
        { type = "item", name = "coal", amount = 2 }, --ash, 2
        { type = "item", name = "wood", amount = 10 } --tailings-dust, 10,
    },
    results = {
        { type = "item", name = "py-coal-tile", amount = 1 }
    },
    requester_paste_multiplier = 4,
    energy_required = 3
}):add_unlock("py-asphalt"):replace_ingredient("coal", "ash"):replace_ingredient("wood", "tailings-dust")

if mods.pypetroleumhandling then
    RECIPE("py-coal-tile"):add_ingredient({ type = "fluid", name = "medium-distillate", amount = 20 })
    data.raw.recipe[ "py-coal-tile" ].category = "reformer"
    data.raw.recipe[ "py-coal-tile" ].results = { { type = "item", name = "py-coal-tile", amount = 2 } }
end

ITEM({
    type = "item",
    name = "py-coal-tile",
    icon = "__base__/graphics/terrain/lab-tiles/lab-dark-1.png",
    icon_size = 1,
    flags = {},
    subgroup = "py-tiles",
    order = "za",
    stack_size = 1000,
    place_as_tile = { result = "py-coal-tile", condition_size = 1, condition = { layers = { water_tile = true } } }
})

TILE({
    type = "tile",
    name = "py-coal-tile",
    needs_correction = false,
    minable = { mining_time = 0.1, result = "py-coal-tile" },
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    collision_mask = { layers = { ground_tile = true } },
    walking_speed_modifier = 3.25,
    decorative_removal_probability = 1,
    layer = 10,
    layer_group = "ground-artificial",
    variants = {
        material_background = {
            picture = "__pyindustrygraphics__/graphics/tiles/py-coal-tile/py-coal-tile.png",
            count = 8,
            scale = 0.5
        },
        transition = {
            mask_layout = {
                inner_corner = {
                    spritesheet = "__pyindustrygraphics__/graphics/tiles/py-coal-tile/py-coal-tile-inner-corner-mask.png",
                    count = 8,
                    scale = 0.5
                },
                outer_corner = {
                    spritesheet = "__pyindustrygraphics__/graphics/tiles/py-coal-tile/py-coal-tile-outer-corner-mask.png",
                    count = 8,
                    scale = 0.5
                },
                side = {
                    spritesheet = "__pyindustrygraphics__/graphics/tiles/py-coal-tile/py-coal-tile-side-mask.png",
                    count = 8,
                    scale = 0.5
                },
                u_transition = {
                    spritesheet = "__pyindustrygraphics__/graphics/tiles/py-coal-tile/py-coal-tile-u-mask.png",
                    count = 8,
                    scale = 0.5
                },
                o_transition = {
                    spritesheet = "__pyindustrygraphics__/graphics/tiles/py-coal-tile/py-coal-tile-o-mask.png",
                    count = 4,
                    scale = 0.5
                }
            }
        }
    },
    walking_sound = table.deepcopy(data.raw.tile[ "grass-1" ].walking_sound),
    map_color = { r = 50, g = 50, b = 50, a = 1 },
    absorptions_per_second = { pollution = 0 },
    vehicle_friction_modifier = 0.6,
})
