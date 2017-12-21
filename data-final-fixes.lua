require("prototypes.void-recipes")

local Area = require('stdlib.area.area')

-- Make all storage-tanks fast replace with other other if they are the same size
for _, storage_tank in pairs(data.raw["storage-tank"]) do
    local area = Area(storage_tank.collision_box):round_to_integer():size()
    storage_tank.fast_replaceable_group = "storage-tank-"..area
end
