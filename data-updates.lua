local FUN = require("prototypes/functions/functions")

if settings.startup["py-tank-adjust"].value then
    if mods["pypetroleumhandling"] then
		data.raw["storage-tank"]["py-tank-9000"].fluid_box.base_area = 1800
		data.raw["storage-tank"]["py-tank-10000"].fluid_box.base_area = 2500
	end
end

--Tiles
require("prototypes/tiles/py-asphalt")
require("prototypes/tiles/py-limestone")
require("prototypes/tiles/py-coal-tile")

require("prototypes/tiles/py-iron")
require("prototypes/tiles/py-steel")
require("prototypes/tiles/py-aluminium")

if mods['pycoalprocessing'] then
    require("prototypes/tiles/py-iron-oxide")
    require("prototypes/tiles/py-nexelit")
end

require("prototypes/updates/base-updates")

if mods["pyfusionenergy"] then
    require("prototypes/updates/pyfusionenergy-updates")
end

if mods["pyrawores"] then
    require("prototypes/updates/pyrawores-updates")
end

RECIPE("accumulator-mk02"):replace_ingredient("copper-cable", "tinned-cable"):replace_ingredient("iron-plate", "stainless-steel")


for f, _ in pairs(data.raw.fluid) do
    local recipe

    if data.raw.recipe['empty-canister-' .. f] then
        recipe = RECIPE('empty-canister-' .. f)
    else
        recipe = RECIPE('empty-' .. f .. '-barrel')
    end

    if recipe ~= nil then
        recipe:change_category("py-barreling"):remove_unlock("fluid-handling"):set_fields{hide_from_player_crafting = true, hide_from_stats = true, enabled = true}
    end

    if data.raw.recipe['fill-canister-' .. f] then
        recipe = RECIPE('fill-canister-' .. f)
    else
        recipe = RECIPE('fill-' .. f .. '-barrel')
    end

    if recipe ~= nil then
        recipe:change_category("py-unbarreling"):remove_unlock("fluid-handling"):set_fields{hide_from_player_crafting = true, hide_from_stats = true, enabled = true}
    end
end


local recipes_list =
{
    "niobium-pipe",
    "niobium-pipe-to-ground",
    "py-asphalt",
    "py-limestone",
    "py-coal-tile",
    "py-iron",
    "py-steel",
    "py-aluminium",
    "py-iron-oxide",
    "py-nexelit",
    "poorman-wood-fence",
    "wood-fence",
    "concrete-wall",
    "py-shed-basic",
    "py-shed-passive-provider",
    "py-shed-storage",
    "py-shed-active-provider",
    "py-shed-requester",
    "py-shed-buffer",
    "py-storehouse-basic",
    "py-storehouse-passive-provider",
    "py-storehouse-storage",
    "py-storehouse-active-provider",
    "py-storehouse-requester",
    "py-storehouse-buffer",
    "py-warehouse-basic",
    "py-warehouse-passive-provider",
    "py-warehouse-storage",
    "py-warehouse-active-provider",
    "py-warehouse-requester",
    "py-warehouse-buffer",
    "py-tank-1000",
    "py-tank-1500",
    "py-tank-3000",
    "py-tank-4000",
    "py-tank-5000",
    "py-tank-7000",
    "py-tank-6500",
    "py-tank-8000",
    "py-check-valve",
    "py-overflow-valve",
    "py-underflow-valve",
    --"accumulator-mk01",
    --"accumulator-mk02",
    --"py-local-radar",
    --"py-roboport-mk01",
    --"py-recharge-station-mk01",
    --"py-construction-robot-01",
    --"py-logistic-robot-01",
    --"py-burner",
    --"py-sinkhole",
    --"py-gas-vent"
}

--adding to module limitation list
FUN.productivity(recipes_list)
