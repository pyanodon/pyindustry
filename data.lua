require("__stdlib__/stdlib/data/data").Util.create_data_globals()

require("prototypes/item-groups")
require("prototypes/recipe-categories")

--Technology
require("prototypes/technologies/storage-tanks")
require("prototypes/technologies/asphalt")
require("prototypes/technologies/warehouses")

--Pipes
require("prototypes/pipes/niobium-pipes")

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

--Walls
require("prototypes/wall/poorman-wood-fence")
require("prototypes/wall/wood-fence")
require("prototypes/wall/concrete-wall")

--Warehouses
require("prototypes/buildings/containers/shed")
require("prototypes/buildings/containers/storehouse")
require("prototypes/buildings/containers/warehouse")

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

--Other
require("prototypes/buildings/accumulator-mk01")
require("prototypes/buildings/accumulator-mk02")
require("prototypes/buildings/radar")
require("prototypes/buildings/megadar")

require('prototypes/buildings/py-roboport-mk01')
require('prototypes/buildings/py-recharge-station-mk01')
require('prototypes/robots/py-construction-robot-01')
require('prototypes/robots/py-logistic-robot-01')

--Voiding
require("prototypes/buildings/burner")
require("prototypes/buildings/sinkhole")
require("prototypes/buildings/gas-vent")
