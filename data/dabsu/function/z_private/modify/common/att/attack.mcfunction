execute if data storage dabsu:run attribute[{id:"minecraft:attack_damage"}] run return run data modify storage dabsu:run attribute[{id:"minecraft:attack_damage"}].base set from storage dabsu:run form.attribute."minecraft:attack_damage"

data modify storage dabsu:run attribute append value {id:"minecraft:attack_damage",base:0.0d}
data modify storage dabsu:run attribute[-1].base set from storage dabsu:run form.attribute."minecraft:attack_damage"