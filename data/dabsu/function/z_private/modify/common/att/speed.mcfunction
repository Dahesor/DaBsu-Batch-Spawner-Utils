execute if data storage dabsu:run attribute[{id:"minecraft:movement_speed"}] run return run data modify storage dabsu:run attribute[{id:"minecraft:movement_speed"}].base set from storage dabsu:run form.attribute."minecraft:movement_speed"

data modify storage dabsu:run attribute append value {id:"minecraft:movement_speed",base:0.0d}
data modify storage dabsu:run attribute[-1].base set from storage dabsu:run form.attribute."minecraft:movement_speed"