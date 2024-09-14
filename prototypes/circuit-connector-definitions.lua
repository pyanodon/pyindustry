-- Adds circuit connection definitions for PyInd entities to the pre-existing global table
-- for base-game implementation details, see https://github.com/wube/factorio-data/blob/ed3d12197fbbe63fcd19c0eb23bc826cea44410f/core/lualib/circuit-connector-sprites.lua#L101
-- variation counts from 0 (Python-like).

circuit_connector_definitions["tanks-3000"] = circuit_connector_definitions.create_vector
(
  universal_connector_template,
  {--Directions are horizontal in/outputs, vertical in/outputs.
   --Remaining orientations are not used, but required to give the data the correct shape.
    { variation = 0, main_offset = util.by_pixel(4, 5), shadow_offset = util.by_pixel(10, 17), show_shadow = true }, 
    { variation = 0, main_offset = util.by_pixel(20, -13), shadow_offset = util.by_pixel(26, -1), show_shadow = true },
    { variation = 0, main_offset = util.by_pixel(100, 100), shadow_offset = util.by_pixel(-46, 97), show_shadow = false },
    { variation = 0, main_offset = util.by_pixel(100, 100), shadow_offset = util.by_pixel(-46, 97), show_shadow = false }
  }
)
