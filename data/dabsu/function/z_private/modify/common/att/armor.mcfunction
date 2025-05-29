execute if data storage dabsu:run attribute[{id:"minecraft:armor"}] run return run data modify storage dabsu:run attribute[{id:"minecraft:armor"}].base set from storage dabsu:run form.attribute."minecraft:armor"

data modify storage dabsu:run attribute append value {id:"minecraft:armor",base:0.0d}
data modify storage dabsu:run attribute[-1].base set from storage dabsu:run form.attribute."minecraft:armor"