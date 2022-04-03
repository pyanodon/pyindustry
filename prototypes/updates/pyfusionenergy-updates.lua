-- TECH CHANGES
TECHNOLOGY("py-accumulator-mk02"):add_prereq("advanced-electronics-2")
TECHNOLOGY('fluid-processing-machines-1'):add_prereq('py-storage-tanks')


-- RECIPE UNLOCKS
if not mods['pyrawores'] then
    RECIPE('automated-factory-mk01'):replace_ingredient('advanced-circuit', 'electronic-circuit'):remove_unlock('advanced-electronics'):add_unlock('fast-inserter')
end

-- RECIPE CHANGES
RECIPE("mixer-mk01"):replace_ingredient("storage-tank", "py-tank-8000")
RECIPE("py-heat-exchanger"):replace_ingredient("storage-tank", "py-tank-7000")
RECIPE("py-heat-exchanger-mk02"):add_ingredient({type = "item", name = "py-tank-8000", amount = 1})
RECIPE("py-heat-exchanger-mk03"):add_ingredient({type = "item", name = "py-tank-9000", amount = 1})
RECIPE("py-heat-exchanger-mk04"):add_ingredient({type = "item", name = "py-tank-10000", amount = 1})