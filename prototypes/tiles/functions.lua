if mods.pystellarexpedition then
    table.insert(data.raw.tile["grass-1"].transitions[2].to_tiles, "empty-space")
    table.insert(data.raw.tile["concrete"].transitions[2].to_tiles, "empty-space")
    table.insert(data.raw.tile["stone-path"].transitions[2].to_tiles, "empty-space")
end
