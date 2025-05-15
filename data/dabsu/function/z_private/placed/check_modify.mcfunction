scoreboard players set $changed calc.dabsu 0
data modify storage dabsu:run run set from storage dabsu:run item.components."minecraft:block_entity_data".SpawnPotentials
data modify storage dabsu:run saved_potential set from storage dabsu:run item.components."minecraft:custom_data".dabsu.Potential
scoreboard players set $recorded calc.dabsu 1