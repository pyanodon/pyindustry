require 'prototypes/void-recipes/fluid-void'
require 'prototypes/void-recipes/item-void'

for name, storage_tank in pairs(data.raw['storage-tank']) do
    if name:find('py%-tank') then
        storage_tank.fast_replaceable_group = 'storage-tank'
    end
end
