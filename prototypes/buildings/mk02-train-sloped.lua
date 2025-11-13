if not mods["elevated-rails"] then return end
local meld = require("__core__.lualib.meld")

local updates = {}

updates.locomotive =
{
    pictures =
    {
        slope_angle_between_frames = 1.25,
        sloped =
        {
            layers =
            {
                util.sprite_load("__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/sloped/loco-sloped",
                    {
                        dice = 4,
                        priority = "very-low",
                        direction_count = 160,
                        scale = 0.5,
                        usage = "train"
                    }
                ),
                util.sprite_load("__pyindustrygraphics__/graphics/entity/mk02-train/locomotive/sloped/loco-mask-sloped",
                    {
                        dice = 4,
                        priority = "very-low",
                        flags = {"mask"},
                        direction_count = 160,
                        apply_runtime_tint = true,
                        draw_as_glow = true,
                        blend_mode = "normal",
                        scale = 0.5,
                        usage = "train"
                    }
                )
            }
        }
    }
}

updates.fluid_wagon =
{
    pictures =
    {
        slope_angle_between_frames = 1.25,
        sloped =
        {
            layers =
            {
                util.sprite_load("__pyindustrygraphics__/graphics/entity/mk02-train/fluid-wagon/sloped/fluid-sloped",
                    {
                        priority = "very-low",
                        direction_count = 160,
                        scale = 0.5,
                        usage = "train"
                    }
                ),
                util.sprite_load("__pyindustrygraphics__/graphics/entity/mk02-train/fluid-wagon/sloped/fluid-mask-sloped",
                    {
                        priority = "very-low",
                        flags = {"mask"},
                        direction_count = 160,
                        apply_runtime_tint = true,
                        draw_as_glow = true,
                        blend_mode = "additive",
                        scale = 0.5,
                        usage = "train"
                    }
                )
            }
        }
    }
}

updates.cargo_wagon =
{
    pictures =
    {
        slope_angle_between_frames = 1.25,
        sloped =
        {
            layers =
            {
                util.sprite_load("__pyindustrygraphics__/graphics/entity/mk02-train/cargo-wagon/sloped/wagon-sloped",
                    {
                        priority = "very-low",
                        direction_count = 160,
                        scale = 0.5,
                        usage = "train"
                    }
                ),
                util.sprite_load("__pyindustrygraphics__/graphics/entity/mk02-train/cargo-wagon/sloped/wagon-mask-sloped",
                    {
                        priority = "very-low",
                        flags = {"mask"},
                        direction_count = 160,
                        apply_runtime_tint = true,
                        draw_as_glow = true,
                        blend_mode = "additive",
                        scale = 0.5,
                        usage = "train"
                    }
                )
            }
        }
    }
}


meld(data.raw["locomotive"]["mk02-locomotive"], updates.locomotive)
meld(data.raw["fluid-wagon"]["mk02-fluid-wagon"], updates.fluid_wagon)
meld(data.raw["cargo-wagon"]["mk02-wagon"], updates.cargo_wagon)