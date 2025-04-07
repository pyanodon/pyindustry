-- https://github.com/pyanodon/pybugreports/issues/920

local tanks_to_reset_rotation = table.invert {
    "py-tank-1500",
    "py-tank-4000",
    "py-tank-5000",
    "py-tank-6500",
    "py-tank-8000",
    "py-tank-9000",
    "py-tank-10000",
    "tailings-pond",
}

local function reset_rotation(event)
    local entity = event.entity
    if not entity.valid then return end
    if not tanks_to_reset_rotation[entity.name] then return end
    entity.direction = 0
end

py.on_event(py.events.on_built(), reset_rotation)
py.on_event(defines.events.on_player_rotated_entity, reset_rotation)
