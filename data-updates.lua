if settings.startup['py-tank-adjust'].value then
    if mods['pypetroleumhandling'] then
        data.raw['storage-tank']['py-tank-9000'].fluid_box.base_area = 1800
        data.raw['storage-tank']['py-tank-9000'].localised_name = {'entity-name.py-tank-9000-adjust'}
        data.raw['storage-tank']['py-tank-10000'].fluid_box.base_area = 2500
        data.raw['storage-tank']['py-tank-10000'].localised_name = {'entity-name.py-tank-10000-adjust'}
    end
end

--Tiles
require 'prototypes/tiles/py-asphalt'
require 'prototypes/tiles/py-limestone'
require 'prototypes/tiles/py-coal-tile'
require 'prototypes/tiles/py-iron'
require 'prototypes/tiles/py-steel'
require 'prototypes/tiles/py-aluminium'

if mods.pyalternativeenergy then
    require 'prototypes/tiles/py-quartz'
    require 'prototypes/tiles/multicolored-concrete'
end

require 'prototypes/updates/base-updates'

if mods['pycoalprocessing'] then
    require 'prototypes/updates/pycoalprocessing-updates'
    require 'prototypes/tiles/py-iron-oxide'
    require 'prototypes/tiles/py-nexelit'
end

if mods['pyfusionenergy'] then
    require 'prototypes/updates/pyfusionenergy-updates'
end

if mods['pyrawores'] then
    require 'prototypes/updates/pyrawores-updates'
end

if mods['pyalternativeenergy'] then
    require 'prototypes/updates/pyalternativeenergy-updates'
end

if mods.pyrawores then
    RECIPE('accumulator-mk02'):replace_ingredient('copper-cable', 'tinned-cable'):replace_ingredient('iron-plate', 'stainless-steel')
end

for f, _ in pairs(data.raw.fluid) do
    for i, recipe_name in pairs {
        'empty-' .. f .. '-canister',
        'empty-' .. f .. '-barrel',
        'fill-' .. f .. '-canister',
        'fill-' .. f .. '-barrel'
    } do
        local recipe = data.raw.recipe[recipe_name] and RECIPE(recipe_name)
        if recipe ~= nil then
            recipe:set_fields {hide_from_player_crafting = true, hide_from_stats = true}
            -- This is backwards, I blame king
            if recipe_name:match('^empty') then
                recipe.category = 'py-barreling'
            else
                recipe.category = 'py-unbarreling'
            end
        end
    end
end

if register_cache_file ~= nil then
    register_cache_file({'pyindustry'}, '__pyindustry__/cached-configs/pyindustry.lua')
    register_cache_file({'pycoalprocessing', 'pyindustry'}, '__pyindustry__/cached-configs/pycoalprocessing+pyindustry.lua')
    register_cache_file({'pycoalprocessing', 'pyfusionenergy', 'pyindustry'}, '__pyindustry__/cached-configs/pycoalprocessing+pyfusionenergy+pyindustry.lua')
end
