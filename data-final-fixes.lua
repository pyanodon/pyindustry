require("stdlib/data/data").create_data_globals()

require("prototypes/void-recipes/fluid-void")
require("prototypes/void-recipes/item-void")

-- Make all storage-tanks fast replace with other other if they are the same size
local Area = require("stdlib/area/area")
for _, storage_tank in pairs(data.raw["storage-tank"]) do
    local area = Area(storage_tank.collision_box):round_to_integer():size()
    storage_tank.fast_replaceable_group = "storage-tank-"..area
end

TECHNOLOGY('logistic-system'):remove_pack('science-pack-3'):remove_pack('high-tech-science-pack'):remove_pack('production-science-pack')