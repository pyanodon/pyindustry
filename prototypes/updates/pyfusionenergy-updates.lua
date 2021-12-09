TECHNOLOGY("advanced-mining-facilities"):add_prereq("py-storage-tanks")
TECHNOLOGY("py-accumulator-mk02"):add_prereq("advanced-electronics-2")

RECIPE("mixer-mk01"):replace_ingredient("storage-tank", "py-tank-8000")
RECIPE("py-heat-exchanger"):replace_ingredient("storage-tank", "py-tank-8000")
