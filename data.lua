require "__pypostprocessing__.lib"

require "prototypes/item-groups"
require "prototypes/recipe-categories"

-- (( Circuit Connector Definitions )) --
require "prototypes/circuit-connector-definitions"
-- ))

--Technology
require "prototypes/technologies/storage-tanks"
require "prototypes/technologies/asphalt"
require "prototypes/technologies/warehouses"
require "prototypes/technologies/railway"
require "prototypes/technologies/accumulators"

--Pipes
require "prototypes/pipes/niobium-pipes"

--Walls
require "prototypes/wall/poorman-wood-fence"
require "prototypes/wall/wood-fence"
require "prototypes/wall/concrete-wall"

--Warehouses
require "prototypes/buildings/containers/shed"
require "prototypes/buildings/containers/storehouse"
require "prototypes/buildings/containers/warehouse"
require "prototypes/buildings/containers/deposit"

--Storage Tanks
require "prototypes/buildings/fluid-tanks/tanks-1000"
require "prototypes/buildings/fluid-tanks/tanks-5000"
require "prototypes/buildings/fluid-tanks/tanks-15000"
require "prototypes/buildings/fluid-tanks/tanks-27500"
require "prototypes/buildings/fluid-tanks/tanks-65000"
require "prototypes/buildings/fluid-tanks/tanks-70000"
require "prototypes/buildings/fluid-tanks/tanks-75000"
require "prototypes/buildings/fluid-tanks/tanks-125000"
require "prototypes/buildings/fluid-tanks/tanks-180000"
require "prototypes/buildings/fluid-tanks/tanks-250000"

require "prototypes/buildings/valves/check-valve"
require "prototypes/buildings/valves/overflow-valve"
require "prototypes/buildings/valves/underflow-valve"

-- Armor
if mods["pycoalprocessing"] then
    require "prototypes/equipment/armor-updates"
    require "prototypes/equipment/portable-gasoline-generator"
end

--Other
require "prototypes/buildings/accumulator-mk01"
require "prototypes/buildings/accumulator-mk02"
require "prototypes/buildings/radar"
require "prototypes/buildings/megadar"
require "prototypes/buildings/barrel-machine"

require "prototypes/buildings/py-roboport-mk01"
require "prototypes/buildings/py-roboport-mk02"
require "prototypes/buildings/py-recharge-station-mk01"
require "prototypes/robots/py-construction-robot-mk01"
require "prototypes/robots/py-logistic-robot-mk01"

require "prototypes/buildings/py-roboport-construction-mk01"
require "prototypes/buildings/py-roboport-construction-mk02"
require "prototypes/buildings/py-roboport-construction-mk03"
require "prototypes/buildings/py-roboport-construction-mk04"

if mods["pycoalprocessing"] then
    require "prototypes/buildings/mk02-locomotive"
    require "prototypes/buildings/mk02-cargo-wagon"
    require "prototypes/buildings/mk02-fluid-wagon"
end

--Voiding
require "prototypes/buildings/burner"
require "prototypes/buildings/sinkhole"
require "prototypes/buildings/gas-vent"

require "prototypes/tiles/functions"
