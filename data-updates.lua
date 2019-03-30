local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

TECHNOLOGY('logistic-system'):remove_pack('utility-science-pack'):remove_pack('production-science-pack'):remove_pack('chemical-science-pack'):remove_prereq('advanced-electronics'):remove_prereq('utility-science-pack')
RECIPE('logistic-chest-storage'):remove_ingredient('advanced-circuit')
RECIPE('logistic-chest-passive-provider'):remove_ingredient('advanced-circuit')
RECIPE('logistic-chest-active-provider'):remove_ingredient('advanced-circuit')
RECIPE('logistic-chest-buffer'):remove_ingredient('advanced-circuit')
RECIPE('logistic-chest-requester'):remove_ingredient('advanced-circuit')

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
  "accumulator-mk01",
  "accumulator-mk02",
  "py-local-radar",
  "py-roboport-mk01",
  "py-recharge-station-mk01",
  "py-construction-robot-01",
  "py-logistic-robot-01",
  "py-burner",
  "py-sinkhole",
  "py-gas-vent"
}

--adding to module limitation list
FUN.productivity(recipes_list)
