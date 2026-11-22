if mods.pystellarexpedition then
    ---@diagnostic disable-next-line: need-check-nil
    table.insert(data.raw.tile["grass-1"].transitions[2].to_tiles, "empty-space")
    ---@diagnostic disable-next-line: need-check-nil
    table.insert(data.raw.tile["concrete"].transitions[2].to_tiles, "empty-space")
    ---@diagnostic disable-next-line: need-check-nil
    table.insert(data.raw.tile["stone-path"].transitions[2].to_tiles, "empty-space")
end
