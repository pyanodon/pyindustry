--DEPRECIATED
-- RECIPE UPDATES --
if not mods["pyrawores"] then
    RECIPE("automated-factory-mk01"):replace_ingredient("advanced-circuit", "electronic-circuit"):remove_unlock("advanced-circuit"):add_unlock("fast-inserter")
end
local burner = data.raw.furnace["py-burner"]
-- Category doesn't exist without pycp
if burner and burner.fuel_categories then
    burner.fuel_categories[#burner.fuel_categories + 1] = "biomass"
end
