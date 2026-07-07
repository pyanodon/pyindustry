local connectors = {}
function connectors.sprites(con_shift, shadow_shift)
    local red_green_shift = {con_shift[1] - 0.1, con_shift[2] + 0.05}
    local blue_shift = {con_shift[1] - 0.05, con_shift[2] + 0.1}
    return {
        connector_main = {
            filename = "__pyindustrygraphics__/graphics/entity/pylon/pylon.png",
            priority = "low",
            width = 27,
            height = 65,
            shift = con_shift,
            scale = 0.5
        },
        led_red = {
            filename = "__base__/graphics/entity/circuit-connector/ccm-universal-04i-red-LED-sequence.png",
            priority = "low",
            width = 48,
            height = 46,
            shift = red_green_shift,
            draw_as_glow = true,
            scale = 0.5,
            line_length = 8
        },
        led_green = {
            filename = "__base__/graphics/entity/circuit-connector/ccm-universal-04h-green-LED-sequence.png",
            priority = "low",
            width = 48,
            height = 46,
            shift = red_green_shift,
            draw_as_glow = true,
            scale = 0.5,
            line_length = 8
        },
        led_blue = {
            filename = "__base__/graphics/entity/circuit-connector/ccm-universal-04e-blue-LED-on-sequence.png",
            priority = "low",
            width = 60,
            height = 60,
            shift = blue_shift,
            draw_as_glow = true,
            scale = 0.5,
            line_length = 8
        },
        led_blue_off = {
            filename = "__base__/graphics/entity/circuit-connector/ccm-universal-04f-blue-LED-off-sequence.png",
            priority = "low",
            width = 46,
            height = 44,
            shift = blue_shift,
            draw_as_glow = true,
            scale = 0.5,
            line_length = 8
        },
        led_light = {
            intensity = 0.8,
            size = 0.9
        },
        blue_led_light_offset = blue_shift,
        red_green_led_light_offset = red_green_shift,
        connector_shadow = {
            filename = "__pyindustrygraphics__/graphics/entity/pylon/pylon-shadow.png",
            priority = "low",
            flags = {"shadow"},
            width = 27,
            height = 65,
            shift = shadow_shift or con_shift,
            scale = 0.5
        }
    }
end

function connectors.points(red_points)
    local rx, ry = red_points[1], red_points[2]
    local gx, gy = rx + 0.06, ry + 0.07
    local srx, sry = rx + 0.1, ry
    local sgx, sgy = gx + 0.1, gy
    return {
        wire = {
            red = {rx, ry},
            green = {gx, gy}
        },
        shadow = {
            red = {srx, sry},
            green = {sgx, sgy}
        }
    }
end

return connectors
