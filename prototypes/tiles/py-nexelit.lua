RECIPE {
    type = "recipe",
    name = "py-nexelit",
    categories = {mods.pyhightech and "pcb" or "hpf"},
    enabled = false,
    ingredients = {
        {type = "item",  name = "nexelit-plate", amount = 1},
        mods.pyhightech and {type = "item", name = "resistor1", amount = 1} or {type = "item", name = "gravel", amount = 2},
        {type = "fluid", name = "tar",           amount = 20}
    },
    results = {
        {type = "item", name = "py-nexelit", amount = 2}
    },
    requester_paste_multiplier = 4,
    energy_required = 3
}:add_unlock("py-asphalt-mk02", "nexelit-mk02")

ITEM {
    type = "item",
    name = "py-nexelit",
    icon = "__pyindustrygraphics__/graphics/icons/py-nexelit.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-tiles",
    order = "a-nexelit",
    stack_size = 1000,
    place_as_tile = {result = "py-nexelit", condition_size = 1, condition = {layers = {water_tile = true}}}
}

TILE {
    type = "tile",
    name = "py-nexelit",
    needs_correction = false,
    minable = {mining_time = 0.1, result = "py-nexelit"},
    mined_sound = {filename = "__base__/sound/deconstruct-bricks.ogg"},
    collision_mask = {layers = {ground_tile = true}},
    walking_speed_modifier = 3.5,
    decorative_removal_probability = 1,
    layer = 36,
    layer_group = "water-overlay",
    walking_sound = table.deepcopy(data.raw.tile["grass-1"].walking_sound),
    map_color = {r = 0, g = 110, b = 255, a = 1},
    absorptions_per_second = {pollution = 0},
    vehicle_friction_modifier = 0.6,
    variants = {
        transition = table.deepcopy(TILE("concrete").variants.transition),
        material_background =
        {
            picture = "__pyindustrygraphics__/graphics/tiles/py-nexelit/py-nexelit.png",
            -- count = 2 randomly distributes each 8x8 chunk of the sprite
            -- so it won't always line up with the chunk-aligned shader.
            count = 1,
            scale = 0.5
        }
    },
    effect = "brick-path-puddle",
    effect_is_opaque = false,
    effect_color = { 113, 206, 255 } -- wanted a light blue highlight
}

local gfx_dir = "__pyindustry__/nex-tile-shader-graphics/"
data:extend({
  {
    type = "tile-effect",
    name = "brick-path-puddle",
    shader = "puddle",
    puddle = {
      -- mask on the green channel
      puddle_noise_texture = { filename = gfx_dir .. "nexelit-mask-left-4x4-1024.png", size = 1024, color_channels = 3 },

      water_effect_parameters = {
        shader_variation = "wetland-water",
        lightmap_alpha = 0,

        textures = {
          -- the channels of the first image are interpreted independently. it's all very confusing.
          -- lots of trial and error.
          { filename = gfx_dir .. "test-caustics-A-diagonal-cross.png", premul_alpha = false },
          { filename = gfx_dir .. "test-slime-blank.png" },
        },
        texture_variations_columns = 1,
        texture_variations_rows = 1,
        secondary_texture_variations_columns = 1,
        secondary_texture_variations_rows = 1,

        animation_speed = 1.5,
        tick_scale = 6,

        -- not many of these properties have been set in any coherent way

        specular_lightness = { 11, 26, 20 }, -- panning/warping vector
        foam_color = { 21, 4, 4 },           -- panning/warping vector
        foam_color_multiplier = 1,

        animation_scale = { 3, 3 },
        dark_threshold = { 0.1, 0.1 },
        reflection_threshold = { 1, 1 },
        specular_threshold = { 0.4, 0.4 },

        near_zoom = 1 / 16,
        far_zoom = 1 / 16,
      },
    },
  }
})