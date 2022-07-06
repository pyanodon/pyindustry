local fun = require("prototypes.functions.functions")

data.raw.fluid['petroleum-gas'].gas_temperature = 20

if not mods['boblogistics'] then
    --Remove base robots
    RECIPE('construction-robot'):remove_unlock('construction-robotics'):set_fields{hidden = true}
    RECIPE('logistic-robot'):remove_unlock('logistic-robotics'):set_fields{hidden = true}
    RECIPE('flying-robot-frame'):remove_unlock('robotics'):set_fields{hidden = true}
    RECIPE("roboport"):remove_unlock('logistic-robotics'):remove_unlock('construction-robotics'):set_fields{hidden = true}

    ITEM("construction-robot"):add_flag("hidden")
    ITEM("logistic-robot"):add_flag("hidden")
    ITEM("flying-robot-frame"):add_flag("hidden")
    ITEM("roboport"):add_flag("hidden")

    for _, recipe in pairs(data.raw.recipe) do
        local r = RECIPE(recipe)
        r:replace_ingredient("roboport", "py-roboport-mk01")
        r:replace_ingredient("construction-robot", "py-construction-robot-01")
        r:replace_ingredient("logistic-robot", "py-logistic-robot-01")
    end

    if not mods['pycoalprocessing'] then
        RECIPE("utility-science-pack"):remove_ingredient("flying-robot-frame"):add_ingredient({type='item', name='electric-engine-unit', amount=2}):add_ingredient({type='item', name='battery', amount=3})
    end
end

--move base techs around to support pynobots
TECHNOLOGY('logistic-system'):remove_pack('utility-science-pack'):remove_pack('production-science-pack'):remove_pack('chemical-science-pack'):remove_prereq('utility-science-pack'):remove_pack('military-science-pack')
TECHNOLOGY('construction-robotics'):remove_prereq('robotics'):add_prereq('steel-processing'):add_prereq('automation'):remove_pack('chemical-science-pack'):remove_pack('logistic-science-pack')
TECHNOLOGY('logistic-robotics'):remove_prereq('robotics'):add_prereq('construction-robotics'):remove_pack('chemical-science-pack'):add_prereq('lubricant')
TECHNOLOGY('personal-roboport-equipment'):add_prereq('chemical-science-pack'):add_prereq('battery')
TECHNOLOGY('robotics'):add_prereq('construction-robotics')
RECIPE('logistic-chest-storage'):remove_ingredient('advanced-circuit'):remove_unlock('logistic-robotics')
RECIPE('logistic-chest-passive-provider'):remove_ingredient('advanced-circuit'):remove_unlock('construction-robotics')
RECIPE('logistic-chest-active-provider'):remove_ingredient('advanced-circuit')
RECIPE('logistic-chest-buffer'):remove_ingredient('advanced-circuit')
RECIPE('logistic-chest-requester'):remove_ingredient('advanced-circuit')

--Move vanilla train to railway tech 1
RECIPE("locomotive"):remove_unlock('railway'):add_unlock('railway-mk01'):remove_ingredient('engine-unit'):add_ingredient({type = "item", name = "pipe", amount = 20}):add_ingredient({type = "item", name = "iron-gear-wheel", amount = 20}):subgroup_order("py-trains", "a")
RECIPE("cargo-wagon"):remove_unlock('railway'):add_unlock('railway-mk01'):subgroup_order("py-trains", "ab")
RECIPE("fluid-wagon"):subgroup_order("py-trains", "ac")
RECIPE("rail"):remove_unlock('railway'):add_unlock('railway-mk01')

TECHNOLOGY("fluid-wagon"):remove_prereq('railway'):add_prereq('railway-mk01'):remove_pack("logistic-science-pack")
TECHNOLOGY("braking-force-1"):remove_prereq('railway'):add_prereq('railway-mk01')
TECHNOLOGY("automated-rail-transportation"):remove_prereq('railway'):add_prereq('railway-mk01'):remove_pack("logistic-science-pack")
TECHNOLOGY("railway"):set_fields{enabled = false}:set_fields{hidden = true}
TECHNOLOGY("rail-signals"):remove_pack("logistic-science-pack")

RECIPE("accumulator"):add_ingredient({type = "item", name = "electronic-circuit", amount = 2})
RECIPE('rocket-silo'):replace_ingredient("pipe", "niobium-pipe")
TECHNOLOGY("electric-energy-accumulators"):set("icon", "__pyindustry__/graphics/technology/accumulator-mk01.png")
TECHNOLOGY("electric-energy-accumulators"):set("icon_size", 128)
TECHNOLOGY("electric-energy-accumulators"):set("icon_mipmaps", nil)


if not mods['pycoalprocessing'] then
    TECHNOLOGY("production-science-pack"):add_prereq("railway-mk01")
end

data.raw.pump['pump'].fluid_wagon_connector_alignment_tolerance = 1.0

RECIPE("storage-tank"):remove_unlock('fluid-handling'):add_unlock('py-storage-tanks')

data.raw["cargo-wagon"]["cargo-wagon"].inventory_size = 20
data.raw["fluid-wagon"]["fluid-wagon"].capacity = 25000
