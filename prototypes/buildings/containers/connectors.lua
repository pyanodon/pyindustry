local connectors = {}
function connectors.sprites(con_shift, shadow_shift)
    local red_green_shift = {con_shift[1] - 0.1, con_shift[2] + 0.05}
    local blue_shift = {con_shift[1] - 0.05, con_shift[2] + 0.1}
    return {
        connector_main = {
            filename = "__pyindustry__/graphics/entity/pylon/pylon.png",
            priority = "low",
            width = 27,
            height = 65,
            shift = con_shift,
            scale = 0.5
        },
        led_red = {
            filename = "__base__/graphics/entity/circuit-connector/circuit-connector-led-red-glow.png",
            priority = "low",
            width = 13,
            height = 12,
            shift = red_green_shift
        },
        led_green = {
            filename = "__base__/graphics/entity/circuit-connector/circuit-connector-led-green-glow.png",
            priority = "low",
            width = 13,
            height = 12,
            shift = red_green_shift
        },
        led_blue = {
            filename = "__base__/graphics/entity/circuit-connector/circuit-connector-led-blue-glow.png",
            priority = "low",
            width = 13,
            height = 12,
            shift = blue_shift
        },
        logistic_animation = {
            filename = "__base__/graphics/entity/circuit-connector/circuit-connector-logistic-animation.png",
            priority = "low",
            blend_mode = "additive",
            line_length = 4,
            width = 43,
            height = 43,
            frame_count = 15,
            animation_speed = 0.5,
            shift = {0, 0}
        },
        led_light = {
            intensity = 0.8,
            size = 0.9
        },
        blue_led_light_offset = blue_shift,
        red_green_led_light_offset = red_green_shift,
        connector_shadow = {
            filename = "__pyindustry__/graphics/entity/pylon/pylon-shadow.png",
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
