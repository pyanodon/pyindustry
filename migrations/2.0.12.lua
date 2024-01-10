for _, surface in pairs(game.surfaces) do
    local tiles={}
    for _, e in pairs(surface.find_tiles_filtered{name="lab-dark-2"}) do
        table.insert(tiles, {name="py-asphalt", position = {e.position.x, e.position.y}})
    end
    surface.set_tiles(tiles)
end
