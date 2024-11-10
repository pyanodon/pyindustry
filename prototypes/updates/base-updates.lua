data.raw.fluid["petroleum-gas"].gas_temperature = 20

if not mods["boblogistics"] then
    --Remove base robots
    RECIPE("construction-robot"):remove_unlock("construction-robotics"):set_fields {hidden = true}
    RECIPE("logistic-robot"):remove_unlock("logistic-robotics"):set_fields {hidden = true}
    RECIPE("flying-robot-frame"):remove_unlock("robotics"):set_fields {hidden = true}
    RECIPE("roboport"):remove_unlock("logistic-robotics"):remove_unlock("construction-robotics"):set_fields {hidden = true}

    ITEM("construction-robot"):set_fields {hidden = true}
    ITEM("logistic-robot"):set_fields {hidden = true}
    ITEM("flying-robot-frame"):set_fields {hidden = true}
    ITEM("roboport"):set_fields {hidden = true}

    for recipe_name in pairs(data.raw.recipe) do
        RECIPE(recipe_name)
            :replace_ingredient("roboport", "py-roboport-mk01")
            :replace_ingredient("construction-robot", "py-construction-robot-mk01")
            :replace_ingredient("logistic-robot", "py-logistic-robot-mk01")
    end

    if not mods["pycoalprocessing"] then
        RECIPE("utility-science-pack"):remove_ingredient("flying-robot-frame"):add_ingredient {type = "item", name = "electric-engine-unit", amount = 2}:add_ingredient {type = "item", name = "battery", amount = 3}
    end
end

--move base techs around to support pynobots
TECHNOLOGY("logistic-system"):remove_pack("utility-science-pack"):remove_pack("production-science-pack"):remove_pack("chemical-science-pack"):remove_prereq("utility-science-pack"):remove_pack("military-science-pack")
TECHNOLOGY("construction-robotics"):remove_prereq("robotics"):add_prereq("steel-processing"):add_prereq("automation"):remove_pack("chemical-science-pack"):remove_pack("logistic-science-pack")
TECHNOLOGY("logistic-robotics"):remove_prereq("robotics"):add_prereq("construction-robotics"):remove_pack("chemical-science-pack")
TECHNOLOGY("robotics"):add_prereq("construction-robotics")
TECHNOLOGY("engine"):remove_pack("logistic-science-pack"):remove_prereq("logistic-science-pack")
TECHNOLOGY("fluid-wagon"):remove_prereq("fluid-handling")
TECHNOLOGY("worker-robots-speed-1"):remove_prereq("robotics"):add_prereq("logistic-robotics"):remove_pack("chemical-science-pack")

RECIPE("storage-chest"):remove_ingredient("advanced-circuit"):remove_unlock("logistic-robotics")
RECIPE("passive-provider-chest"):remove_ingredient("advanced-circuit"):remove_unlock("construction-robotics")
RECIPE("active-provider-chest"):remove_ingredient("advanced-circuit")
RECIPE("buffer-chest"):remove_ingredient("advanced-circuit")
RECIPE("requester-chest"):remove_ingredient("advanced-circuit")

--Move vanilla train to railway tech 1
RECIPE("locomotive"):remove_unlock("railway"):add_unlock("railway-mk01"):remove_ingredient("engine-unit"):add_ingredient {type = "item", name = "pipe", amount = 20}:add_ingredient {type = "item", name = "steam-engine", amount = 2}:add_ingredient {type = "item", name = "iron-gear-wheel", amount = 20}:subgroup_order("py-trains", "a")
RECIPE("cargo-wagon"):remove_unlock("railway"):add_unlock("railway-mk01"):subgroup_order("py-trains", "ab")
RECIPE("fluid-wagon"):subgroup_order("py-trains", "ac")
RECIPE("rail"):remove_unlock("railway"):add_unlock("railway-mk01")

TECHNOLOGY("fluid-wagon"):remove_prereq("railway"):add_prereq("railway-mk01"):remove_pack("logistic-science-pack")
TECHNOLOGY("braking-force-1"):remove_prereq("railway"):add_prereq("railway-mk01")
TECHNOLOGY("automated-rail-transportation"):remove_prereq("railway"):add_prereq("railway-mk01"):remove_pack("logistic-science-pack")
TECHNOLOGY("railway"):set_fields {enabled = false}:set_fields {hidden = true}

RECIPE("accumulator"):add_ingredient {type = "item", name = "electronic-circuit", amount = 2}
RECIPE("rocket-silo"):replace_ingredient("pipe", "niobium-pipe")
TECHNOLOGY("electric-energy-accumulators"):set("icon", "__pyindustry__/graphics/technology/accumulator-mk01.png")
TECHNOLOGY("electric-energy-accumulators"):set("icon_size", 128)


if not mods["pycoalprocessing"] then
    TECHNOLOGY("production-science-pack"):add_prereq("railway-mk01")
end

data.raw.pump["pump"].fluid_wagon_connector_alignment_tolerance = 1.0

RECIPE("storage-tank"):remove_unlock("fluid-handling"):add_unlock("py-storage-tanks")

data.raw["cargo-wagon"]["cargo-wagon"].inventory_size = 20
data.raw["fluid-wagon"]["fluid-wagon"].capacity = 25000

-- Match movement speed on vanilla tiles (except hazard) to py tiles, update decorative removal probability
TILE("stone-path"):set("walking_speed_modifier", 1.5):set("decorative_removal_probability", 1.0)
TILE("concrete"):set("walking_speed_modifier", 2.5):set("vehicle_friction_modifier", 0.75):set("decorative_removal_probability", 1.0)
TILE("refined-concrete"):set("walking_speed_modifier", 3.5):set("vehicle_friction_modifier", 0.75):set("decorative_removal_probability", 1.0)

-- Update hazard concrete to slow movement, for safety™
TILE("hazard-concrete-left"):set("walking_speed_modifier", 0.5):set("vehicle_friction_modifier", 2):set("decorative_removal_probability", 1.0)
TILE("hazard-concrete-right"):set("walking_speed_modifier", 0.5):set("vehicle_friction_modifier", 2):set("decorative_removal_probability", 1.0)
TILE("refined-hazard-concrete-left"):set("walking_speed_modifier", 0.5):set("vehicle_friction_modifier", 500):set("decorative_removal_probability", 1.0)
TILE("refined-hazard-concrete-right"):set("walking_speed_modifier", 0.5):set("vehicle_friction_modifier", 500):set("decorative_removal_probability", 1.0)

data.raw["item-subgroup"]["terrain"].order = "ta"
data.raw["item-subgroup"]["transport"].group = "combat"

data.raw.item["steel-chest"].subgroup = "logistic-network"

ITEM("stone-brick"):set_fields {stack_size = 1000}
ITEM("concrete"):set_fields {stack_size = 1000}
ITEM("hazard-concrete"):set_fields {stack_size = 1000}
ITEM("refined-concrete"):set_fields {stack_size = 1000}
ITEM("refined-hazard-concrete"):set_fields {stack_size = 1000}
