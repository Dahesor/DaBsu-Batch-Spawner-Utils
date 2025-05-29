execute if data storage dabsu:run attribute[{id:"minecraft:armor_toughness"}] run return run data modify storage dabsu:run attribute[{id:"minecraft:armor_toughness"}].base set from storage dabsu:run form.attribute."minecraft:armor_toughness"

data modify storage dabsu:run attribute append value {id:"minecraft:armor_toughness",base:0.0d}
data modify storage dabsu:run attribute[-1].base set from storage dabsu:run form.attribute."minecraft:armor_toughness"