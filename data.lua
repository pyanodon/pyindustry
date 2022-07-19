require("__stdlib__/stdlib/data/data").Util.create_data_globals()

require("prototypes/item-groups")
require("prototypes/recipe-categories")

--Technology
require("prototypes/technologies/storage-tanks")
require("prototypes/technologies/asphalt")
require("prototypes/technologies/warehouses")
require("prototypes/technologies/railway")
require("prototypes/technologies/accumulators")
require("prototypes/technologies/radars")

--Pipes
require("prototypes/pipes/niobium-pipes")

--Walls
require("prototypes/wall/poorman-wood-fence")
require("prototypes/wall/wood-fence")
require("prototypes/wall/concrete-wall")

--Warehouses
require("prototypes/buildings/containers/shed")
require("prototypes/buildings/containers/storehouse")
require("prototypes/buildings/containers/warehouse")
require("prototypes/buildings/containers/deposit")

--Storage Tanks
require("prototypes/buildings/fluid-tanks/tanks-1000")
require("prototypes/buildings/fluid-tanks/tanks-1500")
require("prototypes/buildings/fluid-tanks/tanks-3000")
require("prototypes/buildings/fluid-tanks/tanks-4000")
require("prototypes/buildings/fluid-tanks/tanks-5000")
require("prototypes/buildings/fluid-tanks/tanks-7000")
require("prototypes/buildings/fluid-tanks/tanks-6500")
require("prototypes/buildings/fluid-tanks/tanks-8000")

require("prototypes/buildings/valves/check-valve")
require("prototypes/buildings/valves/overflow-valve")
require("prototypes/buildings/valves/underflow-valve")

--tank size settings check
if settings.startup["py-tank-adjust"].value then
	data.raw["storage-tank"]["py-tank-3000"].fluid_box.base_area = 100
	data.raw["storage-tank"]["py-tank-3000"].localised_name = {"entity-name.py-tank-3000-adjust"}
	data.raw["storage-tank"]["py-tank-4000"].fluid_box.base_area = 275
	data.raw["storage-tank"]["py-tank-4000"].localised_name = {"entity-name.py-tank-4000-adjust"}
	data.raw["storage-tank"]["py-tank-5000"].fluid_box.base_area = 650
	data.raw["storage-tank"]["py-tank-5000"].localised_name = {"entity-name.py-tank-5000-adjust"}
	data.raw["storage-tank"]["py-tank-6500"].fluid_box.base_area = 750
	data.raw["storage-tank"]["py-tank-6500"].localised_name = {"entity-name.py-tank-6500-adjust"}
	data.raw["storage-tank"]["py-tank-8000"].fluid_box.base_area = 1250
	data.raw["storage-tank"]["py-tank-8000"].localised_name = {"entity-name.py-tank-8000-adjust"}
end

--Other
require("prototypes/buildings/accumulator-mk01")
require("prototypes/buildings/accumulator-mk02")
require("prototypes/buildings/radar")
require("prototypes/buildings/megadar")
require("prototypes/buildings/barrel-machine")

require('prototypes/buildings/py-roboport-mk01')
require('prototypes/buildings/py-roboport-mk02')
require('prototypes/buildings/py-recharge-station-mk01')
require('prototypes/robots/py-construction-robot-01')
require('prototypes/robots/py-logistic-robot-01')

if mods['pycoalprocessing'] then
	require("prototypes/buildings/mk02-locomotive")
	require("prototypes/buildings/mk02-cargo-wagon")
	require("prototypes/buildings/mk02-fluid-wagon")
end

--Voiding
require("prototypes/buildings/burner")
require("prototypes/buildings/sinkhole")
require("prototypes/buildings/gas-vent")
