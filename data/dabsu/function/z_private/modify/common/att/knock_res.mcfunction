execute if data storage dabsu:run attribute[{id:"minecraft:knockback_resistance"}] run return run data modify storage dabsu:run attribute[{id:"minecraft:knockback_resistance"}].base set from storage dabsu:run form.attribute."minecraft:knockback_resistance"

data modify storage dabsu:run attribute append value {id:"minecraft:knockback_resistance",base:0.0d}
data modify storage dabsu:run attribute[-1].base set from storage dabsu:run form.attribute."minecraft:knockback_resistance"