-- RECIPE UPDATES --
if not mods['pyrawores'] then
    RECIPE('automated-factory-mk01'):replace_ingredient('advanced-circuit', 'electronic-circuit'):remove_unlock('advanced-electronics'):add_unlock('fast-inserter')
end
