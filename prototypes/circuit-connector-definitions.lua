-- Adds circuit connection definitions for PyInd entities to the pre-existing global table
-- for base-game implementation details, see https://github.com/wube/factorio-data/blob/ed3d12197fbbe63fcd19c0eb23bc826cea44410f/core/lualib/circuit-connector-sprites.lua#L101
-- variation counts from 0 (Python-like).

circuit_connector_definitions["tanks-3000"] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        { --Directions are horizontal in/outputs, vertical in/outputs.
            --Remaining orientations are not used, but required to give the data the correct shape.
            {variation = 0, main_offset = util.by_pixel(4, 5),     shadow_offset = util.by_pixel(10, 17),  show_shadow = true},
            {variation = 0, main_offset = util.by_pixel(20, -13),  shadow_offset = util.by_pixel(26, -1),  show_shadow = true},
            {variation = 0, main_offset = util.by_pixel(100, 100), shadow_offset = util.by_pixel(-46, 97), show_shadow = false},
            {variation = 0, main_offset = util.by_pixel(100, 100), shadow_offset = util.by_pixel(-46, 97), show_shadow = false}
        }
    )

circuit_connector_definitions["py-valves"] = {
    {
        points = {
            shadow = {red = {0.171875, 0.140625}, green = {0.171875, 0.265625}},
            wire = {red = {-0.53125, -0.15625}, green = {-0.53125, 0}}
        },
        sprites = _G.circuit_connector_definitions["inserter"][1].sprites,
    },
    {
        points = {
            shadow = {red = {0.890625, 0.703125}, green = {0.75, 0.75}},
            wire = {red = {0.34375, 0.28125}, green = {0.34375, 0.4375}}
        },
        sprites = _G.circuit_connector_definitions["inserter"][2].sprites,
    },
    {
        points = {
            shadow = {red = {0.15625, 0.0625}, green = {0.09375, 0.125}},
            wire = {red = {-0.53125, -0.09375}, green = {-0.53125, 0.03125}}
        },
        sprites = _G.circuit_connector_definitions["inserter"][3].sprites,
    },
    {
        points = {
            shadow = {red = {0.796875, 0.703125}, green = {0.625, 0.75}},
            wire = {red = {0.40625, 0.28125}, green = {0.40625, 0.4375}}
        },
        sprites = _G.circuit_connector_definitions["inserter"][4].sprites,
    }
}

circuit_connector_definitions["py-warehouse"] = circuit_connector_definitions.create_single
    (
        universal_connector_template,
        {variation = 26, main_offset = util.by_pixel(55, 32.5), shadow_offset = util.by_pixel(52.5, 42.5), show_shadow = false}
    )
