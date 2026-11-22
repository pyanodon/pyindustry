py.on_event(defines.events.on_player_flipped_entity, function(event)
    local entity = event.entity
    if entity.valid and entity.name == "py-sinkhole" then
        entity.mirroring = false
    end
end)
