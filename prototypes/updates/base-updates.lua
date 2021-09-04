
data.raw.fluid['petroleum-gas'].gas_temperature = 20

--Remove base robots
RECIPE('construction-robot'):remove_unlock('construction-robotics')
RECIPE('logistic-robot'):remove_unlock('logistic-robotics')
RECIPE('flying-robot-frame'):remove_unlock('robotics')
RECIPE("roboport"):remove_unlock('logistic-robotics')

--move base techs around to support pynobots
TECHNOLOGY('logistic-system'):remove_pack('utility-science-pack'):remove_pack('production-science-pack'):remove_pack('chemical-science-pack'):remove_prereq('utility-science-pack')
TECHNOLOGY('construction-robotics'):remove_prereq('robotics'):add_prereq('engine'):remove_pack('chemical-science-pack'):remove_pack('logistic-science-pack')
TECHNOLOGY('logistic-robotics'):remove_prereq('robotics'):add_prereq('construction-robotics'):remove_pack('chemical-science-pack')
RECIPE('logistic-chest-storage'):remove_ingredient('advanced-circuit'):remove_unlock('logistic-robotics')
RECIPE('logistic-chest-passive-provider'):remove_ingredient('advanced-circuit'):remove_unlock('construction-robotics')
RECIPE('logistic-chest-active-provider'):remove_ingredient('advanced-circuit')
RECIPE('logistic-chest-buffer'):remove_ingredient('advanced-circuit')
RECIPE('logistic-chest-requester'):remove_ingredient('advanced-circuit')
