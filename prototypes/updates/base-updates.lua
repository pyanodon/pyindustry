
data.raw.fluid['petroleum-gas'].gas_temperature = 20

if not mods['boblogistics'] then
    --Remove base robots
    RECIPE('construction-robot'):remove_unlock('construction-robotics')
    RECIPE('logistic-robot'):remove_unlock('logistic-robotics')
    RECIPE('flying-robot-frame'):remove_unlock('robotics')
    RECIPE("roboport"):remove_unlock('logistic-robotics'):remove_unlock('construction-robotics')
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

TECHNOLOGY("fluid-wagon"):remove_prereq('railway'):add_prereq('railway-mk01'):add_prereq("logistic-science-pack")
TECHNOLOGY("braking-force-1"):remove_prereq('railway'):add_prereq('railway-mk01')
TECHNOLOGY("automated-rail-transportation"):remove_prereq('railway'):add_prereq('railway-mk01'):add_prereq("logistic-science-pack")
TECHNOLOGY("railway"):set_fields{enabled = false}:set_fields{hidden = true}

RECIPE("accumulator"):add_ingredient({type = "item", name = "electronic-circuit", amount = 2})
RECIPE('rocket-silo'):replace_ingredient("pipe", "niobium-pipe")

if not mods['pycoalprocessing'] then
    TECHNOLOGY("production-science-pack"):add_prereq("railway-mk01")
end

data.raw.pump['pump'].fluid_wagon_connector_alignment_tolerance = 1.0

