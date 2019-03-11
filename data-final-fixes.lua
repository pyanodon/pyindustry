require("__stdlib__/stdlib/data/data").Util.create_data_globals()

require("prototypes/void-recipes/fluid-void")
require("prototypes/void-recipes/item-void")

-- Make all storage-tanks fast replace with other other if they are the same size
local Area = require("__stdlib__/stdlib/area/area")
for _, storage_tank in pairs(data.raw["storage-tank"]) do
    local area = Area(storage_tank.collision_box):round():size()
    storage_tank.fast_replaceable_group = "storage-tank-"..area
end
