local FUN = require("prototypes/functions/functions")

if settings.startup["py-tank-adjust"].value then
    if mods["pypetroleumhandling"] then
		data.raw["storage-tank"]["py-tank-9000"].fluid_box.base_area = 1800
		data.raw["storage-tank"]["py-tank-9000"].localised_name = {"entity-name.py-tank-9000-adjust"}
		data.raw["storage-tank"]["py-tank-10000"].fluid_box.base_area = 2500
		data.raw["storage-tank"]["py-tank-10000"].localised_name = {"entity-name.py-tank-10000-adjust"}
	end
end

--Tiles
require("prototypes/tiles/py-asphalt")
require("prototypes/tiles/py-limestone")
require("prototypes/tiles/py-coal-tile")
require("prototypes/tiles/py-iron")
require("prototypes/tiles/py-steel")
require("prototypes/tiles/py-aluminium")

if mods.pyalternativeenergy then
    require("prototypes/tiles/py-quartz")
    require("prototypes/tiles/multicolored-concrete")
end

require("prototypes/updates/base-updates")

if mods["pycoalprocessing"] then
    require("prototypes/updates/pycoalprocessing-updates")
    require("prototypes/tiles/py-iron-oxide")
    require("prototypes/tiles/py-nexelit")
end

if mods["pyfusionenergy"] then
    require("prototypes/updates/pyfusionenergy-updates")
end

if mods["pyrawores"] then
    require("prototypes/updates/pyrawores-updates")
end

RECIPE("accumulator-mk02"):replace_ingredient("copper-cable", "tinned-cable"):replace_ingredient("iron-plate", "stainless-steel")


for f, _ in pairs(data.raw.fluid) do
    for i, recipe_name in pairs({
        'empty-' .. f .. '-canister',
        'empty-' .. f .. '-barrel',
        'fill-' .. f .. '-canister',
        'fill-' .. f .. '-barrel'
    }) do
        local recipe = data.raw.recipe[recipe_name] and RECIPE(recipe_name)
        if recipe ~= nil then
            recipe:set_fields{hide_from_player_crafting = true, hide_from_stats = true}
            -- This is backwards, I blame king
            if recipe_name:match("^empty") then
                recipe:change_category("py-barreling")
            else
                recipe:change_category("py-unbarreling")
            end
        end
    end
end


local recipes_list =
{
    --"accumulator-mk01",
    --"accumulator-mk02",
    --"concrete-wall",
    --"niobium-pipe-to-ground",
    --"niobium-pipe",
    --"poorman-wood-fence",
    --"py-aluminium",
    --"py-asphalt",
    --"py-burner",
    --"py-check-valve",
    --"py-coal-tile",
    --"py-construction-robot-01",
    --"py-gas-vent"
    --"py-iron-oxide",
    --"py-iron",
    --"py-limestone",
    --"py-local-radar",
    --"py-logistic-robot-01",
    --"py-nexelit",
    --"py-overflow-valve",
    --"py-recharge-station-mk01",
    --"py-roboport-mk01",
    --"py-shed-active-provider",
    --"py-shed-basic",
    --"py-shed-buffer",
    --"py-shed-passive-provider",
    --"py-shed-requester",
    --"py-shed-storage",
    --"py-sinkhole",
    --"py-steel",
    --"py-storehouse-active-provider",
    --"py-storehouse-basic",
    --"py-storehouse-buffer",
    --"py-storehouse-passive-provider",
    --"py-storehouse-requester",
    --"py-storehouse-storage",
    --"py-tank-1000",
    --"py-tank-1500",
    --"py-tank-3000",
    --"py-tank-4000",
    --"py-tank-5000",
    --"py-tank-6500",
    --"py-tank-7000",
    --"py-tank-8000",
    --"py-underflow-valve",
    --"py-warehouse-active-provider",
    --"py-warehouse-basic",
    --"py-warehouse-buffer",
    --"py-warehouse-passive-provider",
    --"py-warehouse-requester",
    --"py-warehouse-storage",
    --"wood-fence",
}

--adding to module limitation list
FUN.productivity(recipes_list)

if register_cache_file ~= nil then
    register_cache_file({"pyindustry"}, "__pyindustry__/cached-configs/pyindustry.lua")
    register_cache_file({"pycoalprocessing","pyindustry"}, "__pyindustry__/cached-configs/pycoalprocessing+pyindustry.lua")
    register_cache_file({"pycoalprocessing","pyfusionenergy","pyindustry"}, "__pyindustry__/cached-configs/pycoalprocessing+pyfusionenergy+pyindustry.lua")
end