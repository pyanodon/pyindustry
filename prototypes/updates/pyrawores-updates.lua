RECIPE("accumulator-mk02"):add_ingredient({type = "fluid", name = "liquid-nitrogen", amount = 50})
RECIPE("ball-mill-mk01"):add_ingredient({"py-asphalt", 50})
RECIPE("py-heat-exchanger"):replace_ingredient("stone-brick", "py-asphalt")
TECHNOLOGY("crusher"):add_prereq("py-asphalt"):remove_prereq("separation")
