-- Adds circuit connection definitions for PyInd entities to the pre-existing global table
-- for base-game implementation details, see https://github.com/wube/factorio-data/blob/ed3d12197fbbe63fcd19c0eb23bc826cea44410f/core/lualib/circuit-connector-sprites.lua#L101
-- variation counts from 0 (Python-like).

circuit_connector_definitions["tanks-1000"] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        {
            {variation = 19, main_offset = util.by_pixel(13, 14),  shadow_offset = util.by_pixel(13, 14),  show_shadow = false},
            {variation = 17, main_offset = util.by_pixel(-14, 14), shadow_offset = util.by_pixel(-14, 14),  show_shadow = false},
            {variation = 0, main_offset = util.by_pixel(100, 100), shadow_offset = util.by_pixel(100, 100), show_shadow = false}, --unused
            {variation = 0, main_offset = util.by_pixel(100, 100), shadow_offset = util.by_pixel(100, 100), show_shadow = false} --unused
        }
    )

circuit_connector_definitions["tanks-1500"] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        {
            {variation = 25, main_offset = util.by_pixel(-33, -33),  shadow_offset = util.by_pixel(-33, -33),  show_shadow = false},
            {variation = 0, main_offset = util.by_pixel(100, 100), shadow_offset = util.by_pixel(100, 100),  show_shadow = false}, --unused
            {variation = 0, main_offset = util.by_pixel(100, 100), shadow_offset = util.by_pixel(100, 100), show_shadow = false}, --unused
            {variation = 0, main_offset = util.by_pixel(100, 100), shadow_offset = util.by_pixel(100, 100), show_shadow = false} --unused
        }
    )

circuit_connector_definitions["tanks-3000"] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        { --Directions are horizontal in/outputs, vertical in/outputs.
            --Remaining orientations are not used, but required to give the data the correct shape.
            {variation = 0, main_offset = util.by_pixel(4, 5),     shadow_offset = util.by_pixel(10, 17),  show_shadow = false},
            {variation = 2, main_offset = util.by_pixel(20, -13),  shadow_offset = util.by_pixel(26, -1),  show_shadow = true},
            {variation = 0, main_offset = util.by_pixel(100, 100), shadow_offset = util.by_pixel(-46, 97), show_shadow = false}, --unused
            {variation = 0, main_offset = util.by_pixel(100, 100), shadow_offset = util.by_pixel(-46, 97), show_shadow = false} --unused
        }
    )

circuit_connector_definitions["tanks-7000"] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        {--orientation North, East, South, West
            {variation = 20, main_offset = util.by_pixel(38, 14),  shadow_offset = util.by_pixel(43, 78),  show_shadow = true},
            {variation = 18, main_offset = util.by_pixel(30, 10), shadow_offset = util.by_pixel(30, 10),  show_shadow = false},
            {variation = 20, main_offset = util.by_pixel(38, 14), shadow_offset = util.by_pixel(43, 78), show_shadow = true},
            {variation = 18, main_offset = util.by_pixel(-30, 10), shadow_offset = util.by_pixel(-30, 10), show_shadow = false}
        }
    )

circuit_connector_definitions["tanks-8000"] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        {
            {variation = 27, main_offset = util.by_pixel(66, 18.5),  shadow_offset = util.by_pixel(66, 18.5),  show_shadow = false},
            {variation = 0, main_offset = util.by_pixel(100, 100), shadow_offset = util.by_pixel(100, 100),  show_shadow = false}, --unused
            {variation = 0, main_offset = util.by_pixel(100, 100), shadow_offset = util.by_pixel(100, 100), show_shadow = false}, --unused
            {variation = 0, main_offset = util.by_pixel(100, 100), shadow_offset = util.by_pixel(100, 100), show_shadow = false} --unused
        }
    )

circuit_connector_definitions["py-valves"] = {
    {
        points = {
            shadow = {red = {0.171875, 0.140625}, green = {0.171875, 0.265625}},
            wire = {red = {-0.53125, -0.15625}, green = {-0.53125, 0}}
        },
        sprites = _G.circuit_connector_definitions["inserter"][1]--[[@cast -?]].sprites,
    },
    {
        points = {
            shadow = {red = {0.890625, 0.703125}, green = {0.75, 0.75}},
            wire = {red = {0.34375, 0.28125}, green = {0.34375, 0.4375}}
        },
        sprites = _G.circuit_connector_definitions["inserter"][2]--[[@cast -?]].sprites,
    },
    {
        points = {
            shadow = {red = {0.15625, 0.0625}, green = {0.09375, 0.125}},
            wire = {red = {-0.53125, -0.09375}, green = {-0.53125, 0.03125}}
        },
        sprites = _G.circuit_connector_definitions["inserter"][3]--[[@cast -?]].sprites,
    },
    {
        points = {
            shadow = {red = {0.796875, 0.703125}, green = {0.625, 0.75}},
            wire = {red = {0.40625, 0.28125}, green = {0.40625, 0.4375}}
        },
        sprites = _G.circuit_connector_definitions["inserter"][4]--[[@cast -?]].sprites,
    }
}

circuit_connector_definitions["py-roboport-ze-mk1"] = circuit_connector_definitions.create_single
    (
        universal_connector_template,
        { variation = 26, main_offset = util.by_pixel(0, -5), shadow_offset = util.by_pixel(0, -5), show_shadow = false }
    )

circuit_connector_definitions["py-roboport-ze-mk2"] = circuit_connector_definitions.create_single
    (
        universal_connector_template,
        { variation = 10, main_offset = util.by_pixel(0, 17), shadow_offset = util.by_pixel(0, 17), show_shadow = false }
    )

circuit_connector_definitions["py-roboport-ze-mk3"] = circuit_connector_definitions.create_single
    (
        universal_connector_template,
        { variation = 11, main_offset = util.by_pixel(40, 24), shadow_offset = util.by_pixel(42, 28), show_shadow = true }
    )

circuit_connector_definitions["py-roboport-ze-mk4"] = circuit_connector_definitions.create_single
    (
        universal_connector_template,
        { variation = 10, main_offset = util.by_pixel(0, 50), shadow_offset = util.by_pixel(0, 50), show_shadow = false }
    )
circuit_connector_definitions["py-roboport-mk1"] = circuit_connector_definitions.create_single
    (
        universal_connector_template,
        { variation = 11, main_offset = util.by_pixel(34, 30), shadow_offset = util.by_pixel(38, 30), show_shadow = true }
    )

circuit_connector_definitions["py-roboport-mk2"] = circuit_connector_definitions.create_single
    (
        universal_connector_template,
        { variation = 3, main_offset = util.by_pixel(64, 28), shadow_offset = util.by_pixel(68, 28), show_shadow = true }
    )

circuit_connector_definitions["accumulator-mk1"] = circuit_connector_definitions.create_single
    (
          universal_connector_template,
          { variation = 26, main_offset = util.by_pixel(34, 19), shadow_offset = util.by_pixel(36, 25.5), show_shadow = true }
    )

circuit_connector_definitions["local-radar"] = circuit_connector_definitions.create_single
    (
          universal_connector_template--[[@as lualib.connector_sprite_template]],
          { variation = 2, main_offset = util.by_pixel(-38, 34), shadow_offset = util.by_pixel(-32, 34), show_shadow = true }
    )

circuit_connector_definitions["gas-vent"] = circuit_connector_definitions.create_vector
    (
          universal_connector_template,
        {
            {variation = 26, main_offset = util.by_pixel(0, -25), shadow_offset = util.by_pixel(20, 0), show_shadow = true},
            {variation = 26, main_offset = util.by_pixel(0, -25), shadow_offset = util.by_pixel(20, 0), show_shadow = true},
            {variation = 26, main_offset = util.by_pixel(0, -25), shadow_offset = util.by_pixel(20, 0), show_shadow = true},
            {variation = 26, main_offset = util.by_pixel(0, -25), shadow_offset = util.by_pixel(20, 0), show_shadow = true},
        }
    )

circuit_connector_definitions["sinkhole"] = circuit_connector_definitions.create_vector
    (
          universal_connector_template,
        {
            {variation = 19, main_offset = util.by_pixel(-22, -26), shadow_offset = util.by_pixel(-22, -26), show_shadow = false},
            {variation = 19, main_offset = util.by_pixel(-22, -26), shadow_offset = util.by_pixel(-22, -26), show_shadow = false},
            {variation = 19, main_offset = util.by_pixel(-22, -26), shadow_offset = util.by_pixel(-22, -26), show_shadow = false},
            {variation = 19, main_offset = util.by_pixel(-22, -26), shadow_offset = util.by_pixel(-22, -26), show_shadow = false},
        }
    )

circuit_connector_definitions["burner"] = circuit_connector_definitions.create_vector
    (
          universal_connector_template,
        {
            {variation = 17, main_offset = util.by_pixel(-30, 12), shadow_offset = util.by_pixel(-24, 14), show_shadow = true},
            {variation = 0, main_offset = util.by_pixel(100, 100), shadow_offset = util.by_pixel(100, 100), show_shadow = false}, --unused
            {variation = 0, main_offset = util.by_pixel(100, 100), shadow_offset = util.by_pixel(100, 100), show_shadow = false}, --unused
            {variation = 0, main_offset = util.by_pixel(100, 100), shadow_offset = util.by_pixel(100, 100), show_shadow = false}, --unused
        }
    )

circuit_connector_definitions["barrel-machine"] = circuit_connector_definitions.create_vector
    (
          universal_connector_template,
        {
            {variation = 2, main_offset = util.by_pixel(32, 8), shadow_offset = util.by_pixel(40, 10), show_shadow = true},
            {variation = 2, main_offset = util.by_pixel(32, 8), shadow_offset = util.by_pixel(40, 10), show_shadow = true},
            {variation = 2, main_offset = util.by_pixel(32, 8), shadow_offset = util.by_pixel(40, 10), show_shadow = true},
            {variation = 2, main_offset = util.by_pixel(32, 8), shadow_offset = util.by_pixel(40, 10), show_shadow = true},
        }
    )