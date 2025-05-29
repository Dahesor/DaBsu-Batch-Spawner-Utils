execute if data storage dabsu:run attribute[{id:"minecraft:max_health"}] run return run data modify storage dabsu:run attribute[{id:"minecraft:max_health"}].base set from storage dabsu:run form.attribute."minecraft:max_health"

data modify storage dabsu:run attribute append value {id:"minecraft:max_health",base:0.0d}
data modify storage dabsu:run attribute[-1].base set from storage dabsu:run form.attribute."minecraft:max_health"